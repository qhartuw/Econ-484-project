# models.R
# Three models predicting 2023 employment from 2021 predictors, on the
# clean dataset from prep_psid_tas.R (tas_analysis.csv, or the in-memory
# `analysis` data.frame).
#
#   1. Linear probability model + logistic regression with CLUSTER-ROBUST
#      standard errors at the 1968-family level (siblings are not independent).
#   2. XGBoost with FAMILY-GROUPED cross-validation (siblings never straddle a
#      train/test split), class weighting for the ~80/20 imbalance, scored by
#      ROC-AUC and PR-AUC.
#   3. Double / debiased machine learning (DML) for the effect of one chosen
#      predictor ("treatment") on employment, flexibly controlling for the rest.
#      *** Causal ONLY under unconfoundedness (no unobserved confounders given
#      the controls) + overlap. With one observational panel this is "association
#      adjusted flexibly for observed confounders," not proof of causation. ***
#
# Install once:
# install.packages(c("fixest","xgboost","DoubleML","mlr3","mlr3learners","ranger"))




# Need to mess with the dml model. need to check the codebook for how social anxiety is measured bc rn it seems a bit counterintuitive (0.19 effect on INCREASED employment seems weird)





DATA_DIR <- "."
DATA     <- file.path(DATA_DIR, "tas_analysis.csv")   # output of prep_psid_tas.R

PREDICTORS <- c("female", "age_2021", "emp_2021_working", "educ_yrs_2021",
                "days_unemp_2021", "flourish_2021", "soc_anxiety_2021",
                "log_fam_expend_2021")
OUTCOME <- "employed"
CLUSTER <- "id_fam1968"


# load + median-impute predictors, add missingness flags
load_data <- function(path = DATA) {
  df <- read.csv(path)
  for (c in PREDICTORS) {
    if (any(is.na(df[[c]]))) {
      df[[paste0(c, "_miss")]] <- as.integer(is.na(df[[c]]))
      df[[c]][is.na(df[[c]])]   <- median(df[[c]], na.rm = TRUE)
    }
  }
  df
}

# tiny dependency-free metrics
auc_roc <- function(y, p) {                 # rank-based (Mann-Whitney)
  r <- rank(p); n1 <- sum(y == 1); n0 <- sum(y == 0)
  (sum(r[y == 1]) - n1 * (n1 + 1) / 2) / (n1 * n0)
}
auc_pr <- function(y, p) {                  # average precision
  o <- order(p, decreasing = TRUE); y <- y[o]
  tp <- cumsum(y == 1); fp <- cumsum(y == 0); P <- sum(y == 1)
  precision <- tp / (tp + fp); recall <- tp / P
  sum(diff(c(0, recall)) * precision)
}


# Linear probability model + logit, cluster-robust SEs
model_regression <- function(df, feat_cols) {
  library(fixest)
  f <- as.formula(paste(OUTCOME, "~", paste(feat_cols, collapse = " + ")))
  
  cat("\n=== Linear probability model (cluster-robust SE @ family) ===\n")
  lpm <- feols(f, data = df, cluster = ~ id_fam1968)
  print(summary(lpm))
  
  cat("\n=== Logistic regression (cluster-robust SE @ family) ===\n")
  logit <- feglm(f, data = df, family = binomial(), cluster = ~ id_fam1968)
  print(summary(logit))
}


# XGBoost with family-grouped CV
model_xgboost <- function(df, feat_cols) {
  library(xgboost)
  X <- as.matrix(df[, feat_cols]); y <- df[[OUTCOME]]
  groups <- as.character(df[[CLUSTER]])
  
  set.seed(0)                                   # assign each FAMILY to a fold
  fams <- unique(groups)
  fam_fold <- setNames(sample(rep(1:5, length.out = length(fams))), fams)
  fold_id  <- fam_fold[groups]
  
  pos_w <- sum(y == 0) / sum(y == 1)            # handle ~80/20 imbalance
  oof <- numeric(length(y))
  for (k in 1:5) {
    tr <- fold_id != k; te <- fold_id == k
    m <- xgboost(
      data = X[tr, , drop = FALSE], label = y[tr],
      nrounds = 400, verbose = 0,
      params = list(objective = "binary:logistic", max_depth = 3, eta = 0.03,
                    subsample = 0.8, colsample_bytree = 0.8, lambda = 2,
                    scale_pos_weight = pos_w, eval_metric = "logloss")
    )
    oof[te] <- predict(m, X[te, , drop = FALSE])
  }
  cat("\n=== XGBoost (5-fold, folds split by family) ===\n")
  cat(sprintf("ROC-AUC: %.3f\n", auc_roc(y, oof)))
  cat(sprintf("PR-AUC : %.3f  (base rate %.3f)\n", auc_pr(y, oof), mean(y)))
  cat("NOTE: n~1,500 with ~20% in the minority class -- expect wide CIs; use AUC, not accuracy.\n")
}


# 3.Double ML: effect of previous years uhhhhhhhh whatever its called how healthy r u or smtn on employment
model_dml <- function(df, treatment = "flourish_2021") {
  library(DoubleML); library(mlr3); library(mlr3learners)
  suppressMessages(lgr::get_logger("mlr3")$set_threshold("warn"))
  
  controls <- setdiff(PREDICTORS, treatment)    # no missingness flags, matching the Python version
  d <- df[, c(OUTCOME, treatment, controls)]
  dml_data <- DoubleMLData$new(d, y_col = OUTCOME, d_cols = treatment, x_cols = controls)
  
  ml_l <- lrn("regr.ranger", num.trees = 300, max.depth = 4)   # E[Y|X] nuisance
  ml_m <- lrn("regr.ranger", num.trees = 300, max.depth = 4)   # E[D|X] nuisance
  set.seed(0)
  plr <- DoubleMLPLR$new(dml_data, ml_l = ml_l, ml_m = ml_m, n_folds = 5)
  plr$fit()
  cat(sprintf("\n=== Double ML (PLR): effect of '%s' on P(employed) ===\n", treatment))
  print(plr)
  cat("Reminder: causal only under unconfoundedness + overlap. For a BINARY treatment\n",
      "(e.g. emp_2021_working) use DoubleMLIRM with a classif. learner instead.\n", sep = "")
}


#run
df <- load_data()
feat_cols <- c(PREDICTORS, grep("_miss$", names(df), value = TRUE))
cat(sprintf("Loaded %d rows; base rate %.3f; %d family clusters.\n",
            nrow(df), mean(df[[OUTCOME]]), length(unique(df[[CLUSTER]]))))

model_regression(df, feat_cols)   
model_xgboost(df, feat_cols)      
model_dml(df)                     
