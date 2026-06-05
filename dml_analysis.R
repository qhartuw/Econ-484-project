# =============================================================================
# dml_analysis.R
# Double/Debiased Machine Learning — employment outcome
# Three model groups x five learners x 5-fold cross-fitting (3-fold inner tuning)
#
# Group 1 — Health & Social   : volunteered, health_score, social_media  (IRM/PLR)
# Group 2 — Responsibility    : resp_earn, resp_rent, resp_bills, resp_money (PLR)
# Group 3 — Lagged Wellbeing  : wb_*_lag, sx_anx_lag  (PLR; lag = predetermined)
#
# Learners: OLS/Logistic, LASSO, SVM (RBF), XGBoost, Neural Net
# Inference: cluster-robust by person_id
# =============================================================================

suppressPackageStartupMessages({
  library(DoubleML); library(mlr3); library(mlr3learners)
  library(mlr3tuning); library(paradox)
})
lgr::get_logger("mlr3")$set_threshold("warn")
lgr::get_logger("bbotk")$set_threshold("warn")

N_FOLDS <- 5L; N_REP <- 3L; N_EVALS <- 20L

# ---- 1. Load & recode -------------------------------------------------------
df <- read.csv(file.path("data", "J362431", "psid_tas_panel.csv"))
df$wave <- df$year

yn  <- function(x) ifelse(x == 1, 1L, ifelse(x == 5, 0L, NA_integer_))
nar <- function(x, codes) ifelse(x %in% codes, NA_real_, as.numeric(x))

df <- within(df, {
  working      <- ifelse(emp1 %in% c(0, 99), NA_integer_, ifelse(emp1 == 1, 1L, 0L))
  female       <- ifelse(ER32000 == 2, 1L, ifelse(ER32000 == 1, 0L, NA_integer_))
  age          <- nar(age, c(98, 99))
  health_score <- nar(health, 9)
  chronic_cond <- yn(chronic)
  learning_dis <- yn(learning_disorder)
  volunteered  <- yn(volunteer)
  social_media <- as.integer(social_media)
  resp_earn    <- nar(resp_earn,  c(8, 9))
  resp_rent    <- nar(resp_rent,  c(8, 9))
  resp_bills   <- nar(resp_bills, c(8, 9))
  resp_money   <- nar(resp_money, c(8, 9))
  follow_int   <- nar(follow_interests, c(8, 9))
  hs_grad      <- nar(hs_grad, 9)
  attended_col <- ifelse(attended_college %in% c(1, 3), 1L,
                         ifelse(attended_college == 5, 0L, NA_integer_))
  loan_any     <- ifelse(
    rowSums(cbind(loan_federal, loan_state, loan_private, loan_other) == 1,
            na.rm = TRUE) > 0, 1L, 0L)
  edu_asp      <- nar(edu_aspiration,  c(8, 9, 98, 99))
  edu_exp      <- nar(edu_expectation, c(8, 9, 98, 99))
  highest_edu  <- nar(highest_edu, c(98, 99))
  mother_edu   <- nar(mother_edu,  c(98, 99))
  father_edu   <- nar(father_edu,  c(98, 99))
  asinh_income <- asinh(as.numeric(fam_income))
  # Lagged wellbeing — NA for 2019 obs (no prior wave); used as both
  # treatments in Group 3 and controls in Groups 1 & 2
  wb_emo_lag   <- nar(wellbeing_emo_lag,  9)
  wb_soc_lag   <- nar(wellbeing_soc_lag,  9)
  wb_psy_lag   <- nar(wellbeing_psy_lag,  9)
  sx_anx_lag   <- nar(social_anxiety_lag, 9)
})

# ---- 2. One-hot encode categoricals -----------------------------------------
for (v in c("state", "race", "major", "enrollment"))
  df[[v]] <- addNA(as.factor(df[[v]]))

dummies    <- as.data.frame(
  model.matrix(~ state + race + major + enrollment - 1, data = df))
dummies    <- dummies[, colSums(dummies) > 0, drop = FALSE]
names(dummies) <- make.names(names(dummies))
dummy_cols <- names(dummies)
df         <- cbind(df, dummies)

# ---- 3. Variable sets -------------------------------------------------------
YVAR <- "working"

# Controls that are never treatments in any model group
NON_TRT_CTRL <- c("female", "age", "asinh_income", "chronic_cond", "learning_dis",
                  "follow_int", "edu_asp", "edu_exp", "highest_edu",
                  "mother_edu", "father_edu", "hs_grad", "attended_col",
                  "loan_any", dummy_cols)
LAG_CTRL <- c("wb_emo_lag", "wb_soc_lag", "wb_psy_lag", "sx_anx_lag")

# Group 1 & 2 treatments serve as cross-group controls
G1_TRTS <- c("volunteered", "health_score", "social_media")
G2_TRTS <- c("resp_earn", "resp_rent", "resp_bills", "resp_money")

MODEL_GROUPS <- list(
  Group1 = list(
    label = "Health & Social",
    # LAG_CTRL as controls (predetermined); other groups' treatments not yet included
    base_controls = c(NON_TRT_CTRL, LAG_CTRL),
    treatments = list(
      volunteered  = list(col = "volunteered",  type = "binary"),
      health_score = list(col = "health_score", type = "continuous"),
      social_media = list(col = "social_media", type = "continuous")
    )
  ),
  Group2 = list(
    label = "Responsibility Attitudes",
    base_controls = c(NON_TRT_CTRL, LAG_CTRL, G1_TRTS),
    treatments = list(
      resp_earn  = list(col = "resp_earn",  type = "continuous"),
      resp_rent  = list(col = "resp_rent",  type = "continuous"),
      resp_bills = list(col = "resp_bills", type = "continuous"),
      resp_money = list(col = "resp_money", type = "continuous")
    )
  ),
  Group3 = list(
    label = "Lagged Wellbeing",
    # No LAG_CTRL in base (those are the treatments); no current wellbeing
    # (mediator bias). Other groups' treatments added as controls.
    base_controls = c(NON_TRT_CTRL, G1_TRTS, G2_TRTS),
    treatments = list(
      wb_emo_lag = list(col = "wb_emo_lag", type = "continuous"),
      wb_soc_lag = list(col = "wb_soc_lag", type = "continuous"),
      wb_psy_lag = list(col = "wb_psy_lag", type = "continuous"),
      sx_anx_lag = list(col = "sx_anx_lag", type = "continuous")
    )
  )
)

# ---- 4. Learner factory -----------------------------------------------------
make_learner_pair <- function(lrn_name, type) {
  binary <- (type == "binary")
  switch(lrn_name,
         OLS = list(
           ml_out    = lrn("regr.lm"),
           ml_trt    = if (binary) lrn("classif.log_reg", predict_type = "prob")
           else        lrn("regr.lm"),
           param_set = NULL
         ),
         LASSO = list(
           ml_out    = lrn("regr.cv_glmnet", alpha = 1),
           ml_trt    = if (binary) lrn("classif.cv_glmnet", alpha = 1, predict_type = "prob")
           else        lrn("regr.cv_glmnet", alpha = 1),
           param_set = NULL   # cv_glmnet self-tunes lambda via internal CV
         ),
         SVM = list(
           ml_out    = lrn("regr.svm", kernel = "radial",type = "eps-regression"),
           ml_trt    = if (binary) lrn("classif.svm", kernel = "radial",
                                       predict_type = "prob", type = "C-classification")
           else        lrn("regr.svm", kernel = "radial",type = "eps-regression"),
           param_set = list(
             ml_out = ps(cost  = p_dbl(0.01, 100, logscale = TRUE),
                         gamma = p_dbl(0.001, 10, logscale = TRUE)),
             ml_trt = ps(cost  = p_dbl(0.01, 100, logscale = TRUE),
                         gamma = p_dbl(0.001, 10, logscale = TRUE))
           )
         ),
         XGBoost = list(
           ml_out    = lrn("regr.xgboost", nrounds = 200, verbose = 0),
           ml_trt    = if (binary) lrn("classif.xgboost", nrounds = 200, verbose = 0,
                                       predict_type = "prob")
           else        lrn("regr.xgboost", nrounds = 200, verbose = 0),
           param_set = list(
             ml_out = ps(nrounds   = p_int(50, 500),
                         max_depth = p_int(2, 6),
                         eta       = p_dbl(0.01, 0.3)),
             ml_trt = ps(nrounds   = p_int(50, 500),
                         max_depth = p_int(2, 6),
                         eta       = p_dbl(0.01, 0.3))
           )
         ),
         NeuralNet = list(
           ml_out    = lrn("regr.nnet",    trace = FALSE, MaxNWts = 20000),
           ml_trt    = if (binary) lrn("classif.nnet", trace = FALSE, MaxNWts = 20000,
                                       predict_type = "prob")
           else        lrn("regr.nnet", trace = FALSE, MaxNWts = 20000),
           param_set = list(
             ml_out = ps(size  = p_int(5, 50),
                         decay = p_dbl(1e-4, 0.1, logscale = TRUE)),
             ml_trt = ps(size  = p_int(5, 50),
                         decay = p_dbl(1e-4, 0.1, logscale = TRUE))
           )
         )
  )
}

tune_settings <- function(type) {
  if (type == "binary")
    list(terminator = trm("evals", n_evals = N_EVALS),
         algorithm  = tnr("random_search"),
         rsmp_tune  = rsmp("cv", folds = 3L),
         measure    = list(ml_g = msr("regr.mse"), ml_m = msr("classif.logloss")))
  else
    list(terminator = trm("evals", n_evals = N_EVALS),
         algorithm  = tnr("random_search"),
         rsmp_tune  = rsmp("cv", folds = 3L),
         measure    = list(ml_l = msr("regr.mse"), ml_m = msr("regr.mse")))
}

extract_rep <- function(arr, r) {
  
  d <- dim(arr)
  
  if (length(d) == 3) {
    
    # DoubleML newer format
    # (n_obs, n_rep, n_treatments)
    if (d[3] == 1)
      return(arr[, r, 1])
    
    # older format
    # (n_obs, 1, n_rep)
    if (d[2] == 1)
      return(arr[, 1, r])
    
  }
  
  if (length(d) == 2)
    return(arr[, r])
  
  stop(
    paste(
      "Unknown prediction array shape:",
      paste(d, collapse = " x ")
    )
  )
}


# ---- 5. Nuisance MSE extraction ---------------------------------------------
extract_mse <- function(obj, y, d, type) {
  # predictions stored as 3D arrays: (n_obs, 1, n_rep)
  nr <- obj$n_rep
  if (type == "continuous") {
    l_p <- obj$predictions$ml_l
    m_p <- obj$predictions$ml_m
    mse_l <- mean(sapply(seq_len(nr), function(r) mean((y - extract_rep(l_p,r))^2, na.rm=TRUE)))
    mse_m <- mean(sapply(seq_len(nr), function(r) mean((d - extract_rep(m_p,r))^2, na.rm=TRUE)))
    c(mse_outcome = mse_l, mse_treatment = mse_m)
  } else {
    g0 <- obj$predictions[["ml_g0"]]
    g1 <- obj$predictions[["ml_g1"]]
    mp <- obj$predictions[["ml_m"]]
    mse_g <- mean(sapply(seq_len(nr), function(r) {
      pred <- ifelse(d == 1, g1[,r,1], g0[,r,1])
      mean((y - pred)^2, na.rm = TRUE)
    }))
    mp <- pmax(pmin(mp, 1 - 1e-7), 1e-7)
    logloss <- mean(sapply(seq_len(nr), function(r)
      -mean(d * log(mp[,r,1]) + (1-d) * log(1 - mp[,r,1]), na.rm = TRUE)))
    c(mse_outcome = mse_g, mse_treatment = logloss)
  }
}

# ---- 6. Single DML run (one treatment x one learner) ------------------------
run_dml <- function(d_col, type, x_cols, lrn_spec, df_sub) {
  x_cols <- intersect(x_cols, names(df_sub))
  dat_in <- df_sub[, unique(c(YVAR, d_col, x_cols, "person_id"))]
  
  dat <- DoubleMLClusterData$new(dat_in, y_col = YVAR, d_cols = d_col,
                                 x_cols = x_cols, cluster_cols = "person_id")
  if (type == "binary") {
    obj <- DoubleMLIRM$new(dat, ml_g = lrn_spec$ml_out, ml_m = lrn_spec$ml_trt,
                           n_folds = N_FOLDS, n_rep = N_REP)
    if (!is.null(lrn_spec$param_set))
      obj$tune(param_set     = list(ml_g = lrn_spec$param_set$ml_out,
                                    ml_m = lrn_spec$param_set$ml_trt),
               tune_settings  = tune_settings("binary"), tune_on_folds = FALSE)
  } else {
    obj <- DoubleMLPLR$new(dat, ml_l = lrn_spec$ml_out, ml_m = lrn_spec$ml_trt,
                           n_folds = N_FOLDS, n_rep = N_REP)
    if (!is.null(lrn_spec$param_set))
      obj$tune(param_set     = list(ml_l = lrn_spec$param_set$ml_out,
                                    ml_m = lrn_spec$param_set$ml_trt),
               tune_settings  = tune_settings("continuous"), tune_on_folds = FALSE)
  }
  set.seed(42); obj$fit(store_predictions = TRUE)
  
  mse <- extract_mse(obj, df_sub[[YVAR]], df_sub[[d_col]], type)
  data.frame(treatment     = d_col,
             ATE           = round(as.numeric(obj$coef), 4),
             SE            = round(as.numeric(obj$se),   4),
             p_value       = round(as.numeric(obj$pval), 4),
             mse_outcome   = round(mse["mse_outcome"],   4),
             mse_treatment = round(mse["mse_treatment"], 4),
             row.names = NULL)
}

# ---- 7. Main loop -----------------------------------------------------------
LEARNER_NAMES <- c("LASSO", "SVM")
all_results   <- list()

for (grp_name in names(MODEL_GROUPS)) {
  grp       <- MODEL_GROUPS[[grp_name]]
  all_t_col <- sapply(grp$treatments, `[[`, "col")
  
  req_cols <- unique(c(YVAR, all_t_col,
                       intersect(grp$base_controls, names(df)), "person_id"))
  df_cc    <- df[complete.cases(df[, req_cols]), ]
  cat(sprintf("\n=== %s | n=%d person-waves, %d persons ===\n",
              grp$label, nrow(df_cc), length(unique(df_cc$person_id))))
  
  for (trt_name in names(grp$treatments)) {
    trt    <- grp$treatments[[trt_name]]
    # Controls = base + other treatments in this group (cross-controls), minus focal
    x_cols <- setdiff(c(grp$base_controls, all_t_col), trt$col)
    
    for (lrn_name in LEARNER_NAMES) {
      cat(sprintf("  %-12s x %-10s ... ", trt_name, lrn_name))
      lrn_spec <- make_learner_pair(lrn_name, trt$type)
      res <- tryCatch(
        run_dml(trt$col, trt$type, x_cols, lrn_spec, df_cc),
        error = function(e) { cat("ERROR:", conditionMessage(e), "\n"); NULL }
      )
      if (!is.null(res)) {
        res$group <- grp$label; res$learner <- lrn_name
        all_results[[length(all_results) + 1]] <- res
        cat(sprintf("ATE=%7.4f  SE=%.4f\n", res$ATE, res$SE))
      }
    }
  }
}

results_df <- do.call(rbind, all_results)

# ---- 8. Nuisance MSE comparison table ---------------------------------------
cat("\n\n===== NUISANCE MSE COMPARISON (lower = better) =====\n")
mse_tbl <- results_df[order(results_df$group, results_df$treatment,
                            results_df$mse_outcome),
                      c("group","treatment","learner","mse_outcome","mse_treatment")]
print(mse_tbl, row.names = FALSE)

# Best learner per treatment = lowest outcome nuisance MSE
best <- do.call(rbind, lapply(
  split(results_df, paste(results_df$group, results_df$treatment)),
  function(x) x[which.min(x$mse_outcome), ]
))
best$sig <- ifelse(best$p_value < 0.01, "***",
                   ifelse(best$p_value < 0.05, "**",
                          ifelse(best$p_value < 0.10, "*", "")))

cat("\n===== ATE FROM BEST LEARNER PER TREATMENT =====\n")
print(best[order(best$group, best$treatment),
           c("group","treatment","learner","ATE","SE","p_value","sig")],
      row.names = FALSE)

# ---- 9. Save ----------------------------------------------------------------
out_dir <- file.path("data", "processed", "tables")
dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
write.csv(results_df, file.path(out_dir, "dml_all_results.csv"),  row.names = FALSE)
write.csv(best,       file.path(out_dir, "dml_best_results.csv"), row.names = FALSE)
cat(sprintf("\nSaved: %s\n", file.path(out_dir, "dml_all_results.csv")))
cat(sprintf("Saved: %s\n",  file.path(out_dir, "dml_best_results.csv")))
