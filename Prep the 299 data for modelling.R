# =====================================================================
# prep_psid_tas.R
# =====================================================================
# Build an analysis-ready dataset from a PSID Transition-into-Adulthood
# (TAS) fixed-width extract (job J362299).
#
# Design: HYBRID  ->  2021 predictors predict 2023 employment outcome.
#
# The raw .txt is fixed-width; column positions live in J362299.sas. Every
# variable stores its "DK / not applicable / refused" answers as ordinary
# numbers (e.g. employment 9 = DK/NA, 0 = inappropriate). Modelling on the
# raw values silently corrupts everything, so this script:
#   1. parses the column layout straight from J362299.sas,
#   2. reads only the variables we need,
#   3. recodes each variable's reserved codes to NA (exact codes from the
#      formats file),
#   4. builds the outcome + sample restrictions,
#   5. returns the data.frame (and optionally writes a CSV + data dictionary).
#
# Base R only -- no packages required.
# Run:  source("prep_psid_tas.R")   ->  creates a data.frame called `analysis`
# =====================================================================

# ---- EDIT THIS if the PSID files live elsewhere. Needs J362299.sas + .txt ----
DATA_DIR <- "."
OUT_DIR  <- "."

SAS_LAYOUT <- file.path(DATA_DIR, "J362299.sas")
DATA_TXT   <- file.path(DATA_DIR, "J362299.txt")
OUT_CSV    <- file.path(OUT_DIR,  "tas_analysis.csv")
OUT_DICT   <- file.path(OUT_DIR,  "tas_data_dictionary.csv")

# ---- Variables we use: PSID code, friendly name, role ----
vars <- data.frame(
  code = c("ER30001","ER30002","ER32000","ER34904","ER34916","ER34952",
           "TA210562","TA212316","TA212318","ER85768","ER35104","ER35116",
           "TA230915","TA230916"),
  name = c("id_fam1968","id_person","sex","age_2021","emp_2021","educ_yrs_2021",
           "days_unemp_2021","flourish_2021","soc_anxiety_2021","fam_expend_2021",
           "age_2023","emp_2023","food_ranout_2023","food_notlast_2023"),
  role = c("id","id","pred","pred","pred","pred",
           "pred","pred","pred","pred","aux","outcome",
           "robust","robust"),
  stringsAsFactors = FALSE
)

# ---- Reserved/missing codes per variable (recoded to NA). Codes from
#      J362299_formats.sas. days_unemp uses the standard 3-digit reserved
#      range; verify against your codebook before relying on it. ----
missing_list <- list(
  ER32000  = c(9),          # sex: 9 = NA
  ER34904  = c(0, 999),     # age: 0 inap, 999 NA
  ER35104  = c(0, 999),
  ER34916  = c(0, 9),       # employment: 0 inap, 9 DK/NA
  ER35116  = c(0, 9),
  ER34952  = c(0, 99),      # education years: 0 inap, 99 DK/NA (valid 1-17)
  TA210562 = c(998, 999),   # days unemployed: reserved DK/NA (0 is a valid answer)
  TA212316 = c(99),         # flourishing scale: 99 = a subscale missing (valid 0-18)
  TA212318 = c(9),          # social anxiety: 9 = missing (valid 1-7)
  TA230915 = c(0, 9),       # food security: 0 not asked/inap, 9 DK/NA (valid 1-3)
  TA230916 = c(0, 9)
)

# ---- Analysis switches ----
OUTCOME_DEF <- "B"     # "B"  = employed vs unemployed, labor force only (RECOMMENDED)
# "Ap" = working vs not-working, everyone incl students (NEET-style)
AGE_MIN <- 18L; AGE_MAX <- 28L   # young-adult window, measured in 2023


# ---------------------------------------------------------------------
# Parse fixed-width column positions out of the SAS INPUT statement
# ---------------------------------------------------------------------
parse_sas_positions <- function(sas_path) {
  text  <- paste(readLines(sas_path, warn = FALSE), collapse = "\n")
  block <- regmatches(text, regexpr("(?s)INPUT(.*?);", text, perl = TRUE))
  if (length(block) == 0) stop("Could not find INPUT block in SAS file")
  pat   <- "([A-Za-z][A-Za-z0-9_]*)\\s+([0-9]+)\\s*-\\s*([0-9]+)"
  toks  <- regmatches(block, gregexpr(pat, block, perl = TRUE))[[1]]
  parts <- regmatches(toks, regexec(pat, toks, perl = TRUE))
  pos <- list()
  for (p in parts) pos[[ p[2] ]] <- c(as.integer(p[3]), as.integer(p[4]))
  pos   # named list: code -> c(start, end), 1-indexed inclusive
}


build_analysis_dataset <- function(write = TRUE) {
  pos <- parse_sas_positions(SAS_LAYOUT)
  miss_codes <- setdiff(vars$code, names(pos))
  if (length(miss_codes) > 0)
    stop("Variables not found in layout: ", paste(miss_codes, collapse = ", "))
  
  # Read each variable by slicing its fixed-width columns (substr is vectorised)
  lines <- readLines(DATA_TXT, warn = FALSE)
  n_raw <- length(lines)
  df <- data.frame(row.names = seq_len(n_raw))
  for (i in seq_len(nrow(vars))) {
    se <- pos[[ vars$code[i] ]]
    df[[ vars$name[i] ]] <- suppressWarnings(
      as.numeric(trimws(substr(lines, se[1], se[2])))
    )
  }
  
  # Recode reserved/missing codes to NA
  for (i in seq_len(nrow(vars))) {
    bad <- missing_list[[ vars$code[i] ]]
    if (!is.null(bad)) {
      nm <- vars$name[i]
      df[[nm]][df[[nm]] %in% bad] <- NA
    }
  }
  
  # Unique person id (cluster id stays = id_fam1968)
  df$id_person_unique <- paste0(df$id_fam1968, "_", df$id_person)
  
  # ---- Build the 2023 outcome ----
  e <- df$emp_2023
  if (OUTCOME_DEF == "B") {
    df$in_sample_lf <- e %in% c(1, 2, 3)                         # labor force only
    df$employed <- ifelse(e %in% c(1, 2), 1,
                          ifelse(e == 3, 0, NA))
  } else if (OUTCOME_DEF == "Ap") {
    df$in_sample_lf <- e %in% 1:8                                # any valid status
    df$employed <- ifelse(e %in% c(1, 2), 1,
                          ifelse(e %in% 3:8, 0, NA))
  } else {
    stop("OUTCOME_DEF must be 'B' or 'Ap'")
  }
  
  # ---- Sample restrictions ----
  keep <- df$in_sample_lf &
    (df$emp_2021 %in% 1:8) &
    (!is.na(df$age_2023) & df$age_2023 >= AGE_MIN & df$age_2023 <= AGE_MAX) &
    !is.na(df$employed)
  keep[is.na(keep)] <- FALSE
  analysis <- df[keep, , drop = FALSE]
  
  # Convenience recodes for modelling (NA-safe, matching the Python version)
  analysis$female <- as.integer(!is.na(analysis$sex) & analysis$sex == 2)
  analysis$emp_2021_working <- as.integer(analysis$emp_2021 %in% c(1, 2))
  analysis$log_fam_expend_2021 <- log1p(pmax(analysis$fam_expend_2021, 0))
  
  # ---- Diagnostics ----
  pred_cols <- vars$name[vars$role == "pred"]
  cat(sprintf("Raw records read:                %d\n", n_raw))
  cat(sprintf("Analysis sample (outcome=%s, age %d-%d): %d\n",
              OUTCOME_DEF, AGE_MIN, AGE_MAX, nrow(analysis)))
  cat(sprintf("  employed=1: %d  not-employed=0: %d  base rate: %.3f\n",
              sum(analysis$employed == 1), sum(analysis$employed == 0),
              mean(analysis$employed)))
  cat(sprintf("  distinct families (cluster id): %d\n",
              length(unique(analysis$id_fam1968))))
  cat("\nItem missingness among analysis rows (fraction NA):\n")
  miss_frac <- sapply(analysis[pred_cols], function(x) mean(is.na(x)))
  print(round(miss_frac, 3))
  cat("\nFood security (2023) availability (contemporaneous, NOT a lagged predictor):\n")
  cat(sprintf("  non-missing food_ranout_2023: %d\n",
              sum(!is.na(analysis$food_ranout_2023))))
  
  # ---- Assemble output ----
  out_cols <- c("id_person_unique", "id_fam1968", "employed", "emp_2023",
                pred_cols,
                "female", "emp_2021_working", "log_fam_expend_2021",
                "age_2023", "food_ranout_2023", "food_notlast_2023")
  result <- analysis[, out_cols, drop = FALSE]
  
  if (write) {
    write.csv(result, OUT_CSV, row.names = FALSE)
    ddict <- data.frame(
      name = vars$name, psid_code = vars$code, role = vars$role,
      recoded_to_missing = sapply(vars$code, function(c) {
        b <- missing_list[[c]]; if (is.null(b)) "" else paste(sort(b), collapse = ";")
      }),
      stringsAsFactors = FALSE
    )
    write.csv(ddict, OUT_DICT, row.names = FALSE)
    cat(sprintf("\nWrote %s\nWrote %s\n", OUT_CSV, OUT_DICT))
  }
  
  result
}

# Comment this out if you only want the function defined.
analysis <- build_analysis_dataset()



sas <- readLines("J362299.sas")
grep("FOOD|RAN OUT|LAST|MEAL|EAT|AFFORD", sas, ignore.case = TRUE, value = TRUE)
