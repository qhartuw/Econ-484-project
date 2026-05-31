# svm_employment.R
# SVM predicting 2023 employment from 2021 predictors.
# Same data / variable definitions as "Modelling for Unemployment.R".
# Family-grouped 5-fold CV so siblings never straddle train/test.
# Class weighting handles the ~80/20 imbalance.
#
# Plots shown: ROC curve, PR curve, confusion matrix, permutation importance.
#
# Install once:
# install.packages(c("e1071", "glmnet", "ggplot2", "patchwork"))

DATA_DIR   <- "J362299"
DATA       <- file.path(DATA_DIR, "tas_analysis.csv")

PREDICTORS <- c("female", "age_2021", "emp_2021_working", "educ_yrs_2021",
                "days_unemp_2021", "flourish_2021", "soc_anxiety_2021",
                "log_fam_expend_2021")
OUTCOME    <- "employed"
CLUSTER    <- "id_fam1968"

# ── helpers ───────────────────────────────────────────────────────────────────

load_data <- function(path = DATA) {
  df <- read.csv(path)
  for (col in PREDICTORS) {
    if (any(is.na(df[[col]]))) {
      df[[paste0(col, "_miss")]] <- as.integer(is.na(df[[col]]))
      df[[col]][is.na(df[[col]])]  <- median(df[[col]], na.rm = TRUE)
    }
  }
  df
}

auc_roc <- function(y, p) {
  r <- rank(p); n1 <- sum(y == 1); n0 <- sum(y == 0)
  (sum(r[y == 1]) - n1 * (n1 + 1) / 2) / (n1 * n0)
}

auc_pr <- function(y, p) {
  o <- order(p, decreasing = TRUE); y <- y[o]
  tp <- cumsum(y == 1); fp <- cumsum(y == 0); P <- sum(y == 1)
  precision <- tp / (tp + fp); recall <- tp / P
  sum(diff(c(0, recall)) * precision)
}

roc_curve_data <- function(y, p) {
  o <- order(p, decreasing = TRUE); y <- y[o]
  n1 <- sum(y == 1); n0 <- sum(y == 0)
  data.frame(fpr = c(0, cumsum(y == 0) / n0),
             tpr = c(0, cumsum(y == 1) / n1))
}

pr_curve_data <- function(y, p) {
  o <- order(p, decreasing = TRUE); y <- y[o]
  P  <- sum(y == 1)
  tp <- cumsum(y == 1); fp <- cumsum(y == 0)
  data.frame(recall    = c(0, tp / P),
             precision = c(1, tp / (tp + fp)))
}

# ── SVM ───────────────────────────────────────────────────────────────────────

model_svm <- function(df, feat_cols) {
  library(e1071)
  library(ggplot2)
  library(patchwork)

  X      <- as.matrix(df[, feat_cols])
  y      <- df[[OUTCOME]]
  groups <- as.character(df[[CLUSTER]])

  X_scaled <- scale(X)   # SVM is distance-based; scaling is essential

  set.seed(0)
  fams     <- unique(groups)
  fam_fold <- setNames(sample(rep(1:5, length.out = length(fams))), fams)
  fold_id  <- fam_fold[groups]

  pos_w         <- sum(y == 0) / sum(y == 1)
  class_weights <- c("0" = 1, "1" = pos_w)

  oof_prob  <- numeric(length(y))
  oof_class <- integer(length(y))

  cat("\nTraining SVM (RBF kernel, family-grouped 5-fold CV)...\n")
  for (k in 1:5) {
    cat(sprintf("  fold %d/5\n", k))
    tr <- fold_id != k
    te <- fold_id == k
    m  <- svm(
      x             = X_scaled[tr, , drop = FALSE],
      y             = as.factor(y[tr]),
      kernel        = "radial",
      probability   = TRUE,
      class.weights = class_weights,
      cost          = 1,
      gamma         = 1 / ncol(X_scaled)
    )
    preds        <- predict(m, X_scaled[te, , drop = FALSE], probability = TRUE)
    oof_prob[te]  <- attr(preds, "probabilities")[, "1"]
    oof_class[te] <- as.integer(as.character(preds))
  }

  roc_auc <- auc_roc(y, oof_prob)
  pr_auc  <- auc_pr(y, oof_prob)

  cat(sprintf("\n=== SVM RBF — family-grouped 5-fold CV ===\n"))
  cat(sprintf("ROC-AUC : %.3f\n", roc_auc))
  cat(sprintf("PR-AUC  : %.3f   (base rate %.3f)\n", pr_auc, mean(y)))

  cm <- table(Predicted = oof_class, Actual = y)
  cat("\nConfusion matrix (OOF):\n"); print(cm)

  # ── permutation feature importance (refit on full data) ───────────────────
  m_full <- svm(
    x = X_scaled, y = as.factor(y),
    kernel = "radial", probability = TRUE,
    class.weights = class_weights, cost = 1, gamma = 1 / ncol(X_scaled)
  )
  base_auc <- auc_roc(
    y, attr(predict(m_full, X_scaled, probability = TRUE), "probabilities")[, "1"]
  )
  imp <- sapply(seq_along(feat_cols), function(j) {
    Xp <- X_scaled; Xp[, j] <- sample(Xp[, j])
    base_auc - auc_roc(
      y, attr(predict(m_full, Xp, probability = TRUE), "probabilities")[, "1"]
    )
  })
  imp_df <- data.frame(feature = feat_cols, importance = imp)
  imp_df <- imp_df[order(imp_df$importance, decreasing = TRUE), ]
  cat("\nPermutation feature importance (drop in ROC-AUC on training data):\n")
  print(imp_df, row.names = FALSE)

  # ── plots ─────────────────────────────────────────────────────────────────

  # ROC
  rd    <- roc_curve_data(y, oof_prob)
  p_roc <- ggplot(rd, aes(fpr, tpr)) +
    geom_line(color = "#2166ac", linewidth = 1) +
    geom_abline(linetype = "dashed", color = "grey60") +
    annotate("text", x = 0.6, y = 0.15,
             label = sprintf("AUC = %.3f", roc_auc), size = 4.5) +
    labs(title = "ROC Curve", x = "False Positive Rate", y = "True Positive Rate") +
    theme_minimal(base_size = 12)

  # Precision-Recall
  prd  <- pr_curve_data(y, oof_prob)
  p_pr <- ggplot(prd, aes(recall, precision)) +
    geom_line(color = "#d6604d", linewidth = 1) +
    geom_hline(yintercept = mean(y), linetype = "dashed", color = "grey60") +
    annotate("text", x = 0.6, y = mean(y) + 0.04,
             label = sprintf("baseline = %.3f", mean(y)), size = 3.5, color = "grey40") +
    annotate("text", x = 0.6, y = 0.15,
             label = sprintf("AUC = %.3f", pr_auc), size = 4.5) +
    labs(title = "Precision-Recall Curve", x = "Recall", y = "Precision") +
    theme_minimal(base_size = 12)

  # Confusion matrix heatmap
  cm_df <- as.data.frame(cm)
  p_cm  <- ggplot(cm_df, aes(x = factor(Actual), y = factor(Predicted), fill = Freq)) +
    geom_tile(color = "white", linewidth = 0.8) +
    geom_text(aes(label = Freq), size = 7) +
    scale_fill_gradient(low = "white", high = "#4393c3") +
    labs(title = "Confusion Matrix (OOF)", x = "Actual", y = "Predicted", fill = "n") +
    theme_minimal(base_size = 12)

  # Feature importance
  p_imp <- ggplot(imp_df, aes(x = reorder(feature, importance), y = importance)) +
    geom_col(fill = "#4393c3") +
    geom_hline(yintercept = 0, color = "grey40") +
    coord_flip() +
    labs(title = "Permutation Feature Importance",
         subtitle = "Drop in ROC-AUC when feature is shuffled",
         x = NULL, y = "Importance") +
    theme_minimal(base_size = 12)

  combined <- (p_roc | p_pr) / (p_cm | p_imp)
  print(combined)

  invisible(list(oof_prob = oof_prob, imp = imp_df,
                 roc_auc = roc_auc, pr_auc = pr_auc))
}

# ── SVM (Polynomial kernel, degree=2) ─────────────────────────────────────────
# Kernel: K(x,x') = (γ·xᵀx' + 1)^d  — implicitly maps to {X, X², XᵢXⱼ} for d=2

model_svm_poly <- function(df, feat_cols, degree = 2) {
  library(e1071)
  library(ggplot2)
  library(patchwork)

  X      <- as.matrix(df[, feat_cols])
  y      <- df[[OUTCOME]]
  groups <- as.character(df[[CLUSTER]])

  X_scaled <- scale(X)

  set.seed(0)
  fams     <- unique(groups)
  fam_fold <- setNames(sample(rep(1:5, length.out = length(fams))), fams)
  fold_id  <- fam_fold[groups]

  pos_w         <- sum(y == 0) / sum(y == 1)
  class_weights <- c("0" = 1, "1" = pos_w)

  oof_prob  <- numeric(length(y))
  oof_class <- integer(length(y))

  cat(sprintf("\nTraining SVM (polynomial kernel d=%d, family-grouped 5-fold CV)...\n", degree))
  for (k in 1:5) {
    cat(sprintf("  fold %d/5\n", k))
    tr <- fold_id != k
    te <- fold_id == k
    m  <- svm(
      x             = X_scaled[tr, , drop = FALSE],
      y             = as.factor(y[tr]),
      kernel        = "polynomial",
      degree        = degree,
      coef0         = 1,            # (γ·xᵀx' + 1)^d — offset 1 ensures all X terms present
      probability   = TRUE,
      class.weights = class_weights,
      cost          = 1,
      gamma         = 1 / ncol(X_scaled)
    )
    preds        <- predict(m, X_scaled[te, , drop = FALSE], probability = TRUE)
    oof_prob[te]  <- attr(preds, "probabilities")[, "1"]
    oof_class[te] <- as.integer(as.character(preds))
  }

  roc_auc <- auc_roc(y, oof_prob)
  pr_auc  <- auc_pr(y, oof_prob)

  cat(sprintf("\n=== SVM Polynomial (d=%d) — family-grouped 5-fold CV ===\n", degree))
  cat(sprintf("ROC-AUC : %.3f\n", roc_auc))
  cat(sprintf("PR-AUC  : %.3f   (base rate %.3f)\n", pr_auc, mean(y)))

  cm <- table(Predicted = oof_class, Actual = y)
  cat("\nConfusion matrix (OOF):\n"); print(cm)

  # permutation importance (refit on full data)
  m_full <- svm(
    x = X_scaled, y = as.factor(y),
    kernel = "polynomial", degree = degree, coef0 = 1,
    probability = TRUE, class.weights = class_weights,
    cost = 1, gamma = 1 / ncol(X_scaled)
  )
  base_auc <- auc_roc(
    y, attr(predict(m_full, X_scaled, probability = TRUE), "probabilities")[, "1"]
  )
  imp <- sapply(seq_along(feat_cols), function(j) {
    Xp <- X_scaled; Xp[, j] <- sample(Xp[, j])
    base_auc - auc_roc(
      y, attr(predict(m_full, Xp, probability = TRUE), "probabilities")[, "1"]
    )
  })
  imp_df <- data.frame(feature = feat_cols, importance = imp)
  imp_df <- imp_df[order(imp_df$importance, decreasing = TRUE), ]
  cat("\nPermutation feature importance (drop in ROC-AUC on training data):\n")
  print(imp_df, row.names = FALSE)

  rd    <- roc_curve_data(y, oof_prob)
  p_roc <- ggplot(rd, aes(fpr, tpr)) +
    geom_line(color = "#2166ac", linewidth = 1) +
    geom_abline(linetype = "dashed", color = "grey60") +
    annotate("text", x = 0.6, y = 0.15,
             label = sprintf("AUC = %.3f", roc_auc), size = 4.5) +
    labs(title = sprintf("ROC — SVM Poly(d=%d)", degree),
         x = "False Positive Rate", y = "True Positive Rate") +
    theme_minimal(base_size = 12)

  prd  <- pr_curve_data(y, oof_prob)
  p_pr <- ggplot(prd, aes(recall, precision)) +
    geom_line(color = "#d6604d", linewidth = 1) +
    geom_hline(yintercept = mean(y), linetype = "dashed", color = "grey60") +
    annotate("text", x = 0.6, y = 0.15,
             label = sprintf("AUC = %.3f", pr_auc), size = 4.5) +
    labs(title = sprintf("PR — SVM Poly(d=%d)", degree),
         x = "Recall", y = "Precision") +
    theme_minimal(base_size = 12)

  cm_df <- as.data.frame(cm)
  p_cm  <- ggplot(cm_df, aes(x = factor(Actual), y = factor(Predicted), fill = Freq)) +
    geom_tile(color = "white", linewidth = 0.8) +
    geom_text(aes(label = Freq), size = 7) +
    scale_fill_gradient(low = "white", high = "#4393c3") +
    labs(title = "Confusion Matrix (OOF)", x = "Actual", y = "Predicted", fill = "n") +
    theme_minimal(base_size = 12)

  p_imp <- ggplot(imp_df, aes(x = reorder(feature, importance), y = importance)) +
    geom_col(fill = "#4393c3") +
    geom_hline(yintercept = 0, color = "grey40") +
    coord_flip() +
    labs(title = "Permutation Feature Importance",
         subtitle = "Drop in ROC-AUC when feature is shuffled",
         x = NULL, y = "Importance") +
    theme_minimal(base_size = 12)

  combined <- (p_roc | p_pr) / (p_cm | p_imp)
  print(combined)

  invisible(list(oof_prob = oof_prob, imp = imp_df,
                 roc_auc = roc_auc, pr_auc = pr_auc))
}

# ── Softmax classifier ─────────────────────────────────────────────────────────
# Ridge-penalised logistic regression; for binary outcome the softmax link
# reduces to the sigmoid, so this is the direct softmax analogue of the SVMs.
# λ is tuned by nested 5-fold CV inside each outer fold.

model_softmax <- function(df, feat_cols) {
  library(glmnet)
  library(ggplot2)
  library(patchwork)

  X      <- as.matrix(df[, feat_cols])
  y      <- df[[OUTCOME]]
  groups <- as.character(df[[CLUSTER]])

  X_scaled <- scale(X)

  set.seed(0)
  fams     <- unique(groups)
  fam_fold <- setNames(sample(rep(1:5, length.out = length(fams))), fams)
  fold_id  <- fam_fold[groups]

  obs_w <- ifelse(y == 1, sum(y == 0) / sum(y == 1), 1.0)

  oof_prob  <- numeric(length(y))
  oof_class <- integer(length(y))

  cat("\nTraining Softmax (ridge logistic, λ via nested CV, family-grouped 5-fold CV)...\n")
  for (k in 1:5) {
    cat(sprintf("  fold %d/5\n", k))
    tr <- fold_id != k
    te <- fold_id == k

    cv_fit      <- cv.glmnet(X_scaled[tr, , drop = FALSE], y[tr],
                             family = "binomial", alpha = 0,
                             weights = obs_w[tr], nfolds = 5)
    probs        <- predict(cv_fit, X_scaled[te, , drop = FALSE],
                            s = cv_fit$lambda.min, type = "response")
    oof_prob[te]  <- as.vector(probs)
    oof_class[te] <- as.integer(oof_prob[te] > 0.5)
  }

  roc_auc <- auc_roc(y, oof_prob)
  pr_auc  <- auc_pr(y, oof_prob)

  cat("\n=== Softmax (Ridge Logistic) — family-grouped 5-fold CV ===\n")
  cat(sprintf("ROC-AUC : %.3f\n", roc_auc))
  cat(sprintf("PR-AUC  : %.3f   (base rate %.3f)\n", pr_auc, mean(y)))

  cm <- table(Predicted = oof_class, Actual = y)
  cat("\nConfusion matrix (OOF):\n"); print(cm)

  # refit on full data for interpretable coefficients
  cv_full <- cv.glmnet(X_scaled, y, family = "binomial", alpha = 0, weights = obs_w)
  m_full  <- glmnet(X_scaled, y, family = "binomial", alpha = 0,
                    lambda = cv_full$lambda.min, weights = obs_w)
  coef_vals <- as.vector(coef(m_full))[-1]
  coef_df   <- data.frame(feature = feat_cols, coefficient = coef_vals)
  coef_df   <- coef_df[order(abs(coef_df$coefficient), decreasing = TRUE), ]
  cat("\nCoefficients (full-data fit, ridge-penalised):\n")
  print(coef_df, row.names = FALSE)

  rd    <- roc_curve_data(y, oof_prob)
  p_roc <- ggplot(rd, aes(fpr, tpr)) +
    geom_line(color = "#2166ac", linewidth = 1) +
    geom_abline(linetype = "dashed", color = "grey60") +
    annotate("text", x = 0.6, y = 0.15,
             label = sprintf("AUC = %.3f", roc_auc), size = 4.5) +
    labs(title = "ROC — Softmax (Ridge Logistic)",
         x = "False Positive Rate", y = "True Positive Rate") +
    theme_minimal(base_size = 12)

  prd  <- pr_curve_data(y, oof_prob)
  p_pr <- ggplot(prd, aes(recall, precision)) +
    geom_line(color = "#d6604d", linewidth = 1) +
    geom_hline(yintercept = mean(y), linetype = "dashed", color = "grey60") +
    annotate("text", x = 0.6, y = 0.15,
             label = sprintf("AUC = %.3f", pr_auc), size = 4.5) +
    labs(title = "PR — Softmax (Ridge Logistic)",
         x = "Recall", y = "Precision") +
    theme_minimal(base_size = 12)

  cm_df <- as.data.frame(cm)
  p_cm  <- ggplot(cm_df, aes(x = factor(Actual), y = factor(Predicted), fill = Freq)) +
    geom_tile(color = "white", linewidth = 0.8) +
    geom_text(aes(label = Freq), size = 7) +
    scale_fill_gradient(low = "white", high = "#4393c3") +
    labs(title = "Confusion Matrix (OOF)", x = "Actual", y = "Predicted", fill = "n") +
    theme_minimal(base_size = 12)

  p_coef <- ggplot(coef_df, aes(x = reorder(feature, abs(coefficient)), y = coefficient)) +
    geom_col(aes(fill = coefficient > 0)) +
    scale_fill_manual(values = c("TRUE" = "#4393c3", "FALSE" = "#d6604d"), guide = "none") +
    geom_hline(yintercept = 0, color = "grey40") +
    coord_flip() +
    labs(title = "Softmax Coefficients",
         subtitle = "Ridge-penalised (full-data fit)",
         x = NULL, y = "Coefficient") +
    theme_minimal(base_size = 12)

  combined <- (p_roc | p_pr) / (p_cm | p_coef)
  print(combined)

  invisible(list(oof_prob = oof_prob, coef = coef_df,
                 roc_auc = roc_auc, pr_auc = pr_auc))
}

# ── run ───────────────────────────────────────────────────────────────────────

df        <- load_data()
feat_cols <- c(PREDICTORS, grep("_miss$", names(df), value = TRUE))
cat(sprintf("Loaded %d rows; base rate %.3f; %d family clusters.\n",
            nrow(df), mean(df[[OUTCOME]]), length(unique(df[[CLUSTER]]))))

res_rbf  <- model_svm(df, feat_cols)
res_poly <- model_svm_poly(df, feat_cols, degree = 2)
res_sm   <- model_softmax(df, feat_cols)

cat("\n=== Model comparison (OOF ROC-AUC) ===\n")
cat(sprintf("  SVM RBF kernel   : %.3f\n", res_rbf$roc_auc))
cat(sprintf("  SVM Poly (d=2)   : %.3f\n", res_poly$roc_auc))
cat(sprintf("  Softmax (ridge)  : %.3f\n", res_sm$roc_auc))
