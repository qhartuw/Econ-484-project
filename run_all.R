# Master script: runs the full project pipeline in the correct order.
# Order:
#   1. install_packages.R       
#   2. build_employment_panel.R 
#   3. descriptive_stats.R      
#   4. panel_analysis.R         
#   5. svm_employment.R         
#   6. Modelling for Unemployment.R 

run_step <- function(label, script) {
  cat(sprintf(">>> STEP: %s\n", label))
  cat(sprintf("    Script: %s\n", script))
  if (!file.exists(script)) {
    cat(sprintf("    SKIPPED — file not found: %s\n\n", script))
    return(invisible(NULL))
  }
  tryCatch({
    source(script, echo = FALSE)
    cat(sprintf("    DONE: %s\n\n", label))
  }, error = function(e) {
    cat(sprintf("    ERROR in %s:\n    %s\n\n", script, conditionMessage(e)))
  })
}

# Install packages (comment out after first run)
run_step("Install packages", "install_packages.R")

# Build panel (needs raw data at data/J362398/J362398.xlsx)
run_step("Build employment panel", "build_employment_panel.R")

# Descriptive statistics + figures
run_step("Descriptive statistics", "descriptive_stats.R")

# Panel analysis (pooled OLS, fixed effects, double ML)
run_step("Panel analysis (OLS / FE / DML)", "panel_analysis.R")

# SVM model
run_step("SVM model", "svm_employment.R")

# XGBoost + logit (2021 -> 2023 prediction)
run_step("XGBoost + logit model", "Modelling for Unemployment.R")
