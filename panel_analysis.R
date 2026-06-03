# =============================================================================
# panel_analysis.R
# -----------------------------------------------------------------------------
# Panel regressions of EMPLOYMENT (WTR CURRENTLY WORKING) on young-adult
# characteristics, using the long panel from build_employment_panel.R.
#
#   Outcome : working   (1 = currently working, 0 = not)
#   Panel   : person (person_id) observed over waves 2019, 2021, 2023
#   Models  : (1) Pooled OLS        (2) Fixed-effects (within) OLS
#   SEs     : clustered by person (repeated observations are not independent)
# =============================================================================

suppressPackageStartupMessages({
  library(plm)        # panel estimators (pooling, within)
  library(lmtest)     # coeftest() for clustered-SE tables
  library(sandwich)   # (loaded by plm) clustered vcov
})

# ---- 1. Load ----------------------------------------------------------------
df <- read.csv(file.path("data", "processed", "employment_panel_long.csv"))

# ---- 2. Recode predictors ---------------------------------------------------
# PSID yes/no items: 1 = Yes, 5 = No, {0,8,9} = inap/DK/NA -> missing.
yn  <- function(x) ifelse(x == 1, 1L, ifelse(x == 5, 0L, NA_integer_))
# Conditional items (H12B etc.): 1 = has condition; 0/5 = does not; 8/9 = missing.
has <- function(x) ifelse(x == 1, 1L, ifelse(x %in% c(0, 5), 0L, NA_integer_))

df <- within(df, {
  # health
  health_limits  <- yn(wtr_health_condition_limits_work)  # health limits work
  high_bp        <- yn(wtr_ever_had_high_blood_pressure)
  depression     <- has(wtr_depression)
  anxiety        <- has(wtr_anxiety)
  nerve_meds     <- has(wtr_take_nerve_meds)
  sleep_hours    <- ifelse(of_hours_of_sleep_in_24_hr_period >= 98, NA,
                           of_hours_of_sleep_in_24_hr_period)
  # behaviour / social
  in_relationship<- yn(wtr_romantic_relationship_now)
  drinks_alcohol <- yn(wtr_drink_alcohol)
  volunteered    <- yn(wtr_did_volunteer_work)
  sports_team    <- yn(wtr_member_of_sports_team)
  help_loans     <- yn(wtr_help_pay_student_loans)   # helps pay own student loans
  news_freq      <- ifelse(how_often_watched_or_read_news %in% c(8, 9), NA,
                           how_often_watched_or_read_news)  # ordinal 1-5
  # household / income
  hh_size        <- num_in_fu
  # asinh ~ log but defined at 0 and for the few negative incomes; coefficient
  # reads like a log (semi-elasticity) for incomes away from zero.
  asinh_income   <- asinh(total_family_income)
})
# NOTE: GPA, ACT score, Big Five personality items, and race are also in the
# panel but carry a heavy "inap" (0) code that would roughly halve the sample,
# so they are left out of this specification.

# ---- 3. Model variables + complete cases ------------------------------------
yvar <- "working"
xvars <- c("age", "asinh_income", "hh_size", "sleep_hours", "news_freq",
           "health_limits", "high_bp", "depression", "anxiety", "nerve_meds",
           "in_relationship", "drinks_alcohol", "volunteered", "sports_team",
           "help_loans")

df <- df[complete.cases(df[, c(yvar, xvars, "female", "person_id", "wave")]), ]
pdf <- pdata.frame(df, index = c("person_id", "wave"))

cat(sprintf("Estimation sample: %d person-waves, %d persons, base rate %.3f\n\n",
            nrow(pdf), length(unique(pdf$person_id)), mean(df[[yvar]])))

# ---- 4. Pooled OLS ----------------------------------------------------------
# `female` is time-invariant, so it appears here but drops out under FE below.
# factor(wave) absorbs common year shocks (e.g. the 2021 labour market).
f_pooled <- reformulate(c(xvars, "female", "factor(wave)"), response = yvar)
pooled <- plm(f_pooled, data = pdf, model = "pooling")

# ---- 5. Fixed-effects (within) OLS ------------------------------------------
# Individual fixed effects sweep out every stable trait (sex, race, parental
# background, fixed ability...), so identification comes from WITHIN-person
# change across waves. effect = "twoways" also removes the common year effect.
f_fe <- reformulate(xvars, response = yvar)
fe <- plm(f_fe, data = pdf, model = "within", effect = "twoways")

# ---- 6. Report (clustered SEs by person) ------------------------------------
cl <- function(m) coeftest(m, vcov = vcovHC(m, type = "HC1", cluster = "group"))

cat("================ (1) POOLED OLS  [SE clustered by person] ===============\n")
print(cl(pooled))
cat(sprintf("R^2 = %.3f\n\n", summary(pooled)$r.squared["rsq"]))

cat("===== (2) FIXED EFFECTS (person + wave)  [SE clustered by person] =======\n")
print(cl(fe))
cat(sprintf("Within R^2 = %.3f\n\n", summary(fe)$r.squared["rsq"]))

# ---- 7. Pooled vs FE: is FE needed? -----------------------------------------
cat("F test for individual/time effects (H0: pooled OLS is adequate):\n")
print(pFtest(fe, pooled))


# =============================================================================
# 8. DOUBLE / DEBIASED MACHINE LEARNING (DML)
# -----------------------------------------------------------------------------
# OLS forces a linear, additive form on the controls. DML instead learns the
# nuisance functions E[Y|X] and E[D|X] with machine learning (random forests),
# then estimates the effect of one binary "treatment" D on P(working) via the
# Interactive Regression Model (IRM) -> the Average Treatment Effect (ATE),
# with NO functional-form assumption on the controls.
#
# Inference is cluster-robust at the person level (DoubleMLClusterData), so the
# repeated person-waves are handled correctly. We reuse `df` from above, which
# is already complete-cased on all predictors, so every treatment uses the same
# sample.
#
# *** CAUSAL ONLY under unconfoundedness (no unobserved confounders given the
# controls) + overlap. With one observational panel this is "association,
# flexibly adjusted for observed confounders", not proof of causation. ***
# =============================================================================
suppressPackageStartupMessages({
  library(DoubleML)
  library(mlr3)
  library(mlr3learners)
})
lgr::get_logger("mlr3")$set_threshold("warn")   # silence per-fold chatter

# Binary treatments to evaluate (each gets the ATE on P(working); the others +
# female + the continuous controls serve as confounders).
TREATMENTS <- c("health_limits", "depression", "anxiety",
                "in_relationship", "drinks_alcohol", "volunteered")

# Estimate the ATE of one binary treatment, flexibly controlling for the rest.
dml_ate <- function(treatment) {
  controls <- setdiff(c(xvars, "female"), treatment)
  d <- df[, c(yvar, treatment, controls, "person_id")]
  dat <- DoubleMLClusterData$new(d, y_col = yvar, d_cols = treatment,
                                 x_cols = controls, cluster_cols = "person_id")

  ml_g <- lrn("regr.ranger",    num.trees = 300, max.depth = 5)  # E[Y|D,X]
  ml_m <- lrn("classif.ranger", num.trees = 300, max.depth = 5,  # E[D|X] (propensity)
              predict_type = "prob")

  set.seed(42)
  irm <- DoubleMLIRM$new(dat, ml_g = ml_g, ml_m = ml_m, n_folds = 5)
  irm$fit()
  data.frame(treatment = treatment, ATE = irm$coef,
             SE = irm$se, p_value = irm$pval, row.names = NULL)
}

cat("\n========== (3) DOUBLE ML -- ATE on P(working) [cluster-robust] ==========\n")
dml_results <- do.call(rbind, lapply(TREATMENTS, dml_ate))
dml_results[, c("ATE", "SE", "p_value")] <- round(dml_results[, c("ATE", "SE", "p_value")], 4)
print(dml_results, row.names = FALSE)
cat("\nATE = change in P(currently working) from having the trait (D: 0 -> 1),\n",
    "controlling flexibly (random forests) for all other predictors + sex.\n", sep = "")
