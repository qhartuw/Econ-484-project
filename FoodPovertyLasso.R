# Simple Lasso on the PSID food-stamps panel
# Same outcome as before (binary food_stamps), but now use L1-penalized
# regression with an expanded feature set so Lasso has something to select
# from. Cross-validation picks the penalty 
# Assumes the `panel` object is already in memory from food_stamps_model.R.
# If not, reload it:  panel <- readRDS("data/processed/psid_panel_long.rds")


# install.packages("glmnet")
library(glmnet)
library(dplyr)

# spam features so this is interesting

lasso_df <- panel |>
  filter(
    !is.na(food_stamps),
    !is.na(ed_head),
    !is.na(age_head),
    !is.na(n_kids),
    !is.na(own_rent)
  ) |>
  mutate(
    n_kids_sq      = n_kids^2,
    age_head_sq    = age_head^2,
    ed_head_sq     = ed_head^2,
    ed_head_x_spouse = ed_head * ed_spouse,
    ed_head_x_kids   = ed_head * n_kids,
    age_x_kids       = age_head * n_kids,
    sex              = factor(sex),
    wave             = factor(wave)   # year dummies
  )

cat("Rows after dropping missings:", nrow(lasso_df), "\n")

# 2. Build the design matrix and outcome vector
# model.matrix expands factors to dummy columns and gives us the matrix
# glmnet expects. The "- 1" drops the intercept since glmnet adds its own.

X <- model.matrix(
  food_stamps ~ ed_head + ed_head_sq + ed_spouse + no_spouse_ed +
    n_kids + n_kids_sq +
    age_head + age_head_sq +
    ed_head_x_spouse + ed_head_x_kids + age_x_kids +
    own_rent + sex + wave
  - 1,
  data = lasso_df
)
y <- lasso_df$food_stamps

cat("Design matrix:", nrow(X), "rows x", ncol(X), "columns\n")


# Cross-validated Lasso
# alpha = 1 since we want pure Lasso. alpha = 0 would be ridge; 0 < alpha < 1 is elastic net.
# family = "gaussian" runs a linear Lasso. The outcome is 0/1 but treating it
# as continuous (same logic as LPM) keeps the coefficients interpretable as
# changes in probability. Alternative: family = "binomial" for logistic Lasso.
# nfolds = 10 bc it seems like enough ig

set.seed(42)
cv_lasso <- cv.glmnet(
  x       = X,
  y       = y,
  family  = "gaussian",
  alpha   = 1,
  nfolds  = 10
)

# Plot: MSE vs. log(lambda). Two dashed vertical lines mark lambda.min
# (penalty that minimizes CV error) and lambda.1se (largest penalty within
# 1 SE of the minimum — the more parsimonious "default" pick).
plot(cv_lasso)

cat("\nlambda.min:", cv_lasso$lambda.min,
    "\nlambda.1se:", cv_lasso$lambda.1se, "\n")

# 4. Inspect what Lasso kept
# Coefficients at the 1se lambda
coefs_1se <- coef(cv_lasso, s = "lambda.1se")
coefs_min <- coef(cv_lasso, s = "lambda.min")

cat("\n=== Coefficients at lambda.1se (more parsimonious) ===\n")
print(coefs_1se)

cat("\n=== Coefficients at lambda.min (best CV fit) ===\n")
print(coefs_min)

# which features survived selection?
kept_1se <- rownames(coefs_1se)[as.vector(coefs_1se) != 0]
dropped_1se <- rownames(coefs_1se)[as.vector(coefs_1se) == 0]

cat("\nKept at lambda.1se (", length(kept_1se), "features):\n", sep = "")
print(kept_1se)
cat("\nDropped at lambda.1se (", length(dropped_1se), "features):\n", sep = "")
print(dropped_1se)


# Compare Lasso coefficients to plain OLS on the same feature set
# Useful for showing how much Lasso shrinks the noisy ones.

ols <- lm(y ~ X)
ols_coefs <- coef(ols)
names(ols_coefs) <- gsub("^X", "", names(ols_coefs))

compare <- data.frame(
  variable    = c("(Intercept)", colnames(X)),
  OLS         = round(ols_coefs, 4),
  Lasso_1se   = round(as.vector(coefs_1se), 4),
  Lasso_min   = round(as.vector(coefs_min), 4)
)
cat("\n=== OLS vs Lasso coefficients ===\n")
print(compare, row.names = FALSE)


#  relative to 1999, families with kids were 16.7 pp more likely to be on food stamps in 2013
#  Only own_rentRent, age_head, and age_head_sq actually went to zero at lambda.1se. Most features survived. Some big shrinkers
