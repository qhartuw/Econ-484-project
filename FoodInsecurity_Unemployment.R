
# foodstamp_unemployment.R   (combined, self-contained)
# Does LAGGED 2021 food hardship (SNAP / food-stamp receipt) predict
# 2023 UNEMPLOYMENT among PSID young adults?
#
#   Outcome   : unemployed in 2023 (1 = unemployed, 0 = employed),
#               labor-force participants only            [J362299]
#   Treatment : foodstamp_2021 (1 = family got food stamps in 2021)
#               [J362432, ER82839, keyed by 2023 family interview number]
#   Controls  : 2021 lagged young-adult characteristics  [J362299]
#   Models    : (1) OLS / LPM   (2) Lasso   (3) Double ML (ATE)
#
# SNAP receipt is a food-HARDSHIP proxy, not the USDA food-insecurity
# scale -- describe it that way in the paper.

DIR_432 <- "J362432"   # holds J362432.sas + J362432.txt (food stamps)
DIR_299 <- "J362299"   # holds J362299.sas + J362299.txt (employment + 2021 preds)
AGE_MIN <- 18L; AGE_MAX <- 28L

# Reads the column map out of a PSID .sas file's INPUT block and returns a
# lookup of variable name -> c(start, end) character positions. PSID data come
# as fixed-width text with no delimiters, so this is what lets us slice each
# variable out of the raw .txt by its column positions instead of hardcoding them.
parse_sas_positions <- function(sas_path) {
  text  <- paste(readLines(sas_path, warn = FALSE), collapse = "\n")
  block <- regmatches(text, regexpr("(?s)INPUT(.*?);", text, perl = TRUE))
  if (length(block) == 0) stop("Could not find INPUT block in ", sas_path)
  pat   <- "([A-Za-z][A-Za-z0-9_]*)\\s+([0-9]+)\\s*-\\s*([0-9]+)"
  toks  <- regmatches(block, gregexpr(pat, block, perl = TRUE))[[1]]
  parts <- regmatches(toks, regexec(pat, toks, perl = TRUE))
  pos <- list(); for (p in parts) pos[[ p[2] ]] <- c(as.integer(p[3]), as.integer(p[4]))
  pos
}

# generic fixed-width reader: data.frame of named columns from a layout
read_fixed <- function(sas_path, txt_path, codes, names_out) {
  pos  <- parse_sas_positions(sas_path)
  gone <- setdiff(codes, names(pos))
  if (length(gone) > 0)
    stop("Variables not found in ", sas_path, " -- re-pull adding them: ",
         paste(gone, collapse = ", "))
  lines <- readLines(txt_path, warn = FALSE)
  out <- data.frame(row.names = seq_along(lines))
  for (i in seq_along(codes)) {
    se <- pos[[ codes[i] ]]
    out[[ names_out[i] ]] <- suppressWarnings(as.numeric(trimws(substr(lines, se[1], se[2]))))
  }
  out
}


# Pulls the food-stamp variables out of the J362432 extract and tidies them:
# the yes/no "used food stamps" items are recoded to 1/0 (8/9 -> missing) and
# interview numbers of 0 (not in a family unit that wave) are set to missing.
# It then builds `fs_2021_lookup`, a table linking each 2023 family interview
# number to whether that family received food stamps in 2021 (ER82839, the
# "2 years ago" item from the 2023 wave) which lagged measure we merge on next.
# The final cat() just prints row counts, the 2021 receipt rate, and a check
# for duplicate keys so we can confirm the data read in sensibly.
fs <- read_fixed(
  file.path(DIR_432, "J362432.sas"), file.path(DIR_432, "J362432.txt"),
  codes     = c("ER78002","ER78846","ER82002","ER82839"),
  names_out = c("iwnum_2021","fs_2019","iwnum_2023","fs_2021")
)
fs_recode  <- function(x) ifelse(x == 1, 1L, ifelse(x == 5, 0L, NA_integer_))  # 1=Yes,5=No,8/9=miss
zero_to_na <- function(x) ifelse(x == 0, NA_integer_, as.integer(x))           # 0 IW# = not in FU
fs$fs_2019    <- fs_recode(fs$fs_2019)
fs$fs_2021    <- fs_recode(fs$fs_2021)
fs$iwnum_2021 <- zero_to_na(fs$iwnum_2021)
fs$iwnum_2023 <- zero_to_na(fs$iwnum_2023)

# Lagged-2021 lookup (key = 2023 family interview number
fs_2021_lookup <- unique(fs[!is.na(fs$iwnum_2023) & !is.na(fs$fs_2021),
                            c("iwnum_2023","fs_2021")])
names(fs_2021_lookup) <- c("iwnum_2023","foodstamp_2021")
# Longer-lag alternative also available: fs_2019 keyed by iwnum_202

# B. Build the J362299 person-level analysis frame (+ ER35101 merge key)
codes_299 <- c("ER30001","ER30002","ER32000","ER34904","ER34916","ER34952",
               "TA210562","TA212316","TA212318","ER85768","ER35104","ER35116",
               "ER35101")
names_299 <- c("id_fam1968","id_person","sex","age_2021","emp_2021","educ_yrs_2021",
               "days_unemp_2021","flourish_2021","soc_anxiety_2021","fam_expend_2021",
               "age_2023","emp_2023","iwnum_2023")

df <- tryCatch(
  read_fixed(file.path(DIR_299, "J362299.sas"), file.path(DIR_299, "J362299.txt"),
             codes_299, names_299),
)

# In PSID, "inapplicable / don't know / refused" answers are stored as ordinary
# numbers (e.g. 0, 9, 99, 999), so left alone they'd be treated as real data and
# corrupt the analysis. `missing_list` records those reserved codes for each
# variable (taken from J362299_formats.sas), and the loop sets any matching
# values to NA. Variables with no entry in the list (like the ID codes) are
# skipped and left untouched.
missing_list <- list(
  ER32000  = c(9),
  ER34904  = c(0, 999),  ER35104 = c(0, 999),
  ER34916  = c(0, 9),    ER35116 = c(0, 9),
  ER34952  = c(0, 99),
  TA210562 = c(998, 999),
  TA212316 = c(99),
  TA212318 = c(9),
  ER35101  = c(0)
)
for (i in seq_along(codes_299)) {
  bad <- missing_list[[ codes_299[i] ]]
  if (!is.null(bad)) df[[ names_299[i] ]][df[[ names_299[i] ]] %in% bad] <- NA
}

# Build the outcome and the estimation sample. PSID's 2023 employment code is
# mapped to a labor-force measure: 1/2 (working) -> employed = 1, 3 (unemployed)
# -> 0, anything else -> NA; `unemployed` is just its complement. `keep` then
# restricts to people actually in the 2023 labor force (codes 1-3), with a valid
# 2021 employment status, aged 18-28 in 2023, and a non-missing outcome so
# students and others out of the labor force are excluded, making this true
# unemployment rather than non-employment. The last three lines add modelling
# conveniences: a female dummy, a "working in 2021" dummy, and a log of family
# expenditure (log1p so that zeros are handled safely)
df$employed   <- ifelse(df$emp_2023 %in% c(1, 2), 1L,
                        ifelse(df$emp_2023 == 3, 0L, NA_integer_))
df$unemployed <- 1L - df$employed
keep <- (df$emp_2023 %in% c(1, 2, 3)) & (df$emp_2021 %in% 1:8) &
  (!is.na(df$age_2023) & df$age_2023 >= AGE_MIN & df$age_2023 <= AGE_MAX) &
  !is.na(df$employed)
keep[is.na(keep)] <- FALSE
analysis <- df[keep, , drop = FALSE]

analysis$female              <- as.integer(!is.na(analysis$sex) & analysis$sex == 2)
analysis$emp_2021_working    <- as.integer(analysis$emp_2021 %in% c(1, 2))
analysis$log_fam_expend_2021 <- log1p(pmax(analysis$fam_expend_2021, 0))


# Merge the lagged-2021 SNAP measure onto the young adults
analysis <- merge(analysis, fs_2021_lookup, by = "iwnum_2023", all.x = TRUE)
cat(sprintf("[merge] analysis rows=%d | matched a 2021 SNAP value=%d (%.1f%%)\n",
            nrow(analysis), sum(!is.na(analysis$foodstamp_2021)),
            100 * mean(!is.na(analysis$foodstamp_2021))))


# Model frame + complete cases
yvar     <- "unemployed"
treat    <- "foodstamp_2021"
controls <- c("age_2021", "female", "educ_yrs_2021", "emp_2021_working",
              "days_unemp_2021", "flourish_2021", "soc_anxiety_2021",
              "log_fam_expend_2021")

d <- analysis[complete.cases(analysis[, c(yvar, treat, controls, "id_fam1968")]), ]
cat(sprintf("[sample] N=%d young adults | unemployment rate=%.3f | SNAP-2021 rate=%.3f\n\n",
            nrow(d), mean(d[[yvar]]), mean(d[[treat]])))


# OLS 
suppressPackageStartupMessages({ library(sandwich); library(lmtest) })
clse <- function(m, cl) coeftest(m, vcov = vcovCL(m, cluster = cl))

m_biv  <- lm(reformulate(treat, yvar), data = d)
m_full <- lm(reformulate(c(treat, controls), yvar), data = d)

cat("(1a) OLS: unemployed ~ foodstamp_2021 (bivariate)\n")
print(clse(m_biv,  d$id_fam1968))
cat("\n (1b) OLS: + lagged controls [SE clustered by 1968 family] \n")
print(clse(m_full, d$id_fam1968))
cat(sprintf("R^2 = %.3f\n\n", summary(m_full)$r.squared))


# Lasso (also more features)
suppressPackageStartupMessages(library(glmnet))
d$age_sq     <- d$age_2021^2
d$educ_sq    <- d$educ_yrs_2021^2
d$age_x_educ <- d$age_2021 * d$educ_yrs_2021
d$fs_x_emp21 <- d[[treat]] * d$emp_2021_working

X <- model.matrix(
  reformulate(c(treat, controls, "age_sq", "educ_sq", "age_x_educ", "fs_x_emp21"), yvar),
  data = d)[, -1]
y <- d[[yvar]]

set.seed(42)
cv <- cv.glmnet(X, y, family = "gaussian", alpha = 1, nfolds = 10)
co <- coef(cv, s = "lambda.1se")
cat("(2) LASSO (LPM, alpha=1)\n")
cat(sprintf("lambda.min=%.5f  lambda.1se=%.5f\n", cv$lambda.min, cv$lambda.1se))
cat(sprintf("foodstamp_2021 coef @lambda.1se: %.4f  (%s)\n",
            co[treat, 1], ifelse(co[treat, 1] != 0, "SELECTED", "dropped")))
cat("Features kept @lambda.1se:\n"); print(setdiff(rownames(co)[as.vector(co) != 0], "(Intercept)"))

pf <- rep(1, ncol(X)); pf[colnames(X) == treat] <- 0   # force SNAP in
set.seed(42)
cv_force <- cv.glmnet(X, y, family = "gaussian", alpha = 1, nfolds = 10, penalty.factor = pf)
cat(sprintf("\nforced-in foodstamp_2021 coef @lambda.1se: %.4f\n\n",
            coef(cv_force, s = "lambda.1se")[treat, 1]))


# Double ML ATE of 2021 SNAP receipt on P(unemployed in 2023)
# IRM with random-forest nuisances, inference clustered at the 1968 family.
# Light settings for a first pass; bump n_folds/n_rep and add the tuning
# block from panel_analysis.R for final numbers.
# * Causal ONLY under unconfoundedness given controls + overlap. *

suppressPackageStartupMessages({
  library(DoubleML); library(mlr3); library(mlr3learners); library(ranger)
})
lgr::get_logger("mlr3")$set_threshold("warn")

dml_dat <- DoubleMLClusterData$new(
  d[, c(yvar, treat, controls, "id_fam1968")],
  y_col = yvar, d_cols = treat, x_cols = controls, cluster_cols = "id_fam1968"
)
ml_g <- lrn("regr.ranger",    num.trees = 500)
ml_m <- lrn("classif.ranger", num.trees = 500, predict_type = "prob")

set.seed(42)
irm <- DoubleMLIRM$new(dml_dat, ml_g = ml_g, ml_m = ml_m, n_folds = 5, n_rep = 3)
irm$fit()

cat("DMRL results i.e. ATE of 2021 SNAP receipt on P(unemployed) \n")
print(data.frame(ATE = round(irm$coef, 4), SE = round(irm$se, 4),
                 p_value = round(irm$pval, 4), row.names = NULL))
cat("\nATE = change in P(unemployed in 2023) from the 2021 family having received\n",
    "food stamps (D: 0 -> 1), flexibly controlling for the lagged characteristics.\n", sep = "")