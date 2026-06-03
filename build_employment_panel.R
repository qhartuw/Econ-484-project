# =============================================================================
# build_employment_panel.R
# -----------------------------------------------------------------------------
# Build a person x wave LONG panel from the PSID Data Center extract
# data/J362398/J362398.xlsx (TAS waves 2019, 2021, 2023).
#
# The extract is in WIDE form: every variable is its own column, named by its
# PSID code (e.g. TA190577). Variable meanings come from data/J362398/
# J362398_labels.txt. The three waves carry parallel concepts whose codes differ
# but whose label text is identical (e.g. "D76CKPT WTR CURRENTLY WORKING" is
# TA190577 / TA210580 / TA230603), so we align waves by NORMALIZED LABEL.
#
# DEPENDENT VARIABLE (this research): "WTR CURRENTLY WORKING"
#   2019 TA190577 | 2021 TA210580 | 2023 TA230603
#   Raw PSID coding: 1 = Yes (working), 5 = No. We build `working` in {1,0}.
#
# Person id is the stable PSID individual key (ER30001 * 1000 + ER30002).
#
# Outputs (data/processed/):
#   employment_panel_long.rds / .csv   stacked panel, one row per person-wave
#   employment_panel_codebook.csv      concept -> per-wave source code + label
# =============================================================================

suppressPackageStartupMessages({
  library(readxl)
  library(dplyr)
  library(tidyr)
})

# ---- 1. Paths & config ------------------------------------------------------
DATA_XLSX  <- file.path("data", "J362398", "J362398.xlsx")
LABELS_TXT <- file.path("data", "J362398", "J362398_labels.txt")
OUT_DIR    <- file.path("data", "processed")
dir.create(OUT_DIR, recursive = TRUE, showWarnings = FALSE)

WAVES <- c("2019", "2021", "2023")
WAVE_PREFIX <- c("2019" = "TA19", "2021" = "TA21", "2023" = "TA23")

# Time-invariant person-level columns carried onto every wave row.
ID_1968    <- "ER30001"   # 1968 interview number
PERSON_NO  <- "ER30002"   # person number within 1968 family
SEX        <- "ER32000"   # 1 = male, 2 = female (stable)
INVARIANT_KEEP <- c(
  sample_status      = "ER32006",   # whether sample or nonsample
  mother_marital_birth = "ER32015", # marital status of mother at birth
  sampling_error_cluster = "ER31997"
)
# Per-wave TAS participation flag (==1 if respondent that wave, else NA).
TAS_FLAG <- c("2019" = "TAS19", "2021" = "TAS21", "2023" = "TAS23")

# Explicit per-wave map for the ER (core / individual-file) wave variables.
# These can't be aligned by label alone ("# IN FU" repeats with no year tag),
# so we pin them by code. Family income is the PRIOR calendar year (lagged).
ER_WAVE_MAP <- list(
  interview_number    = c("2019" = "ER34701", "2021" = "ER34901", "2023" = "ER35101"),
  sequence_number     = c("2019" = "ER34702", "2021" = "ER34902", "2023" = "ER35102"),
  relation_to_rp      = c("2019" = "ER34703", "2021" = "ER34903", "2023" = "ER35103"),
  age                 = c("2019" = "ER34704", "2021" = "ER34904", "2023" = "ER35104"),
  num_in_fu           = c("2019" = "ER72016", "2021" = "ER78016", "2023" = "ER82017"),
  total_family_income = c("2019" = "ER77448", "2021" = "ER81775", "2023" = "ER85629")
)

# ---- 2. Helpers -------------------------------------------------------------
# Parse "CODE   LABEL TEXT" lines from the PSID labels file -> data.frame.
parse_labels <- function(path) {
  lines <- readLines(path, warn = FALSE)
  m <- regmatches(lines, regexec("^([A-Za-z][A-Za-z0-9_]*)\\s{2,}(.+?)\\s*$", lines))
  hit <- vapply(m, length, integer(1)) == 3
  data.frame(var   = vapply(m[hit], `[`, character(1), 2),
             label = vapply(m[hit], `[`, character(1), 3),
             stringsAsFactors = FALSE)
}

# Normalize a label so the same concept matches across waves:
#  - uppercase, collapse whitespace
#  - strip a leading questionnaire tag ("D76CKPT ", "A2 ", "B19A ", "H12B ")
#  - strip a trailing "-YYYY" (family income year) or trailing wave digits
normalize_label <- function(x) {
  x <- toupper(trimws(x))
  x <- gsub("\\s+", " ", x)
  x <- sub("^[A-Z]+[0-9]+[A-Z0-9]*\\s+", "", x)  # leading question tag
  x <- sub("-?(19|20)[0-9]{2}$", "", x)          # trailing year (e.g. INCOME-2018)
  x <- sub("\\s+(19|21|23)$", "", x)             # trailing wave marker
  trimws(x)
}

# snake_case, syntactically valid, unique concept names from normalized labels.
snake <- function(x) {
  s <- tolower(x)
  s <- gsub("[^a-z0-9]+", "_", s)
  s <- gsub("^_+|_+$", "", s)
  make.unique(s, sep = "_")
}

# ---- 3. Read data + labels --------------------------------------------------
cat("Reading extract...\n")
raw <- read_excel(DATA_XLSX, sheet = "Data")
lab <- parse_labels(LABELS_TXT)
lab_of <- setNames(lab$label, lab$var)

# ---- 4. Build the TA concept map (align waves by normalized label) ----------
ta_vars <- grep("^TA(19|21|23)[0-9]+$", names(raw), value = TRUE)
ta_info <- data.frame(var = ta_vars, stringsAsFactors = FALSE) |>
  mutate(prefix = substr(var, 1, 4),
         wave   = names(WAVE_PREFIX)[match(prefix, WAVE_PREFIX)],
         label  = lab_of[var],
         norm   = normalize_label(label)) |>
  filter(!is.na(label), norm != "", norm != "RELEASE NUMBER")

ta_map <- ta_info |>
  select(norm, wave, var) |>
  pivot_wider(names_from = wave, values_from = var) |>
  arrange(norm)
ta_map$concept   <- snake(ta_map$norm)
ta_map$n_waves   <- rowSums(!is.na(ta_map[WAVES]))
# Representative label = most recent wave's text (strip leading tag for clarity).
rep_lab <- ta_info |> group_by(norm) |> summarise(label = dplyr::last(label), .groups = "drop")
ta_map  <- left_join(ta_map, rep_lab, by = "norm")

cat(sprintf("  %d TA concepts aligned (%d present in all 3 waves)\n",
            nrow(ta_map), sum(ta_map$n_waves == 3)))

# ---- 5. Assemble the long panel ---------------------------------------------
# Invariant block (one row per person), keyed by person_id.
invariant <- raw |>
  transmute(
    person_id = as.numeric(.data[[ID_1968]]) * 1000 + as.numeric(.data[[PERSON_NO]]),
    id_fam1968 = as.numeric(.data[[ID_1968]]),
    person_no  = as.numeric(.data[[PERSON_NO]]),
    sex        = as.numeric(.data[[SEX]])
  )
for (nm in names(INVARIANT_KEEP)) invariant[[nm]] <- raw[[INVARIANT_KEEP[nm]]]

build_wave <- function(w) {
  out <- invariant
  out$wave <- as.integer(w)
  out$in_tas_wave <- as.integer(!is.na(raw[[TAS_FLAG[w]]]))

  # TA concepts present this wave -> renamed to concept names.
  codes <- setNames(ta_map[[w]], ta_map$concept)
  codes <- codes[!is.na(codes)]
  ta_block <- raw[, codes, drop = FALSE]
  names(ta_block) <- names(codes)

  # ER per-wave variables -> concept names.
  er_codes <- vapply(ER_WAVE_MAP, function(v) v[[w]], character(1))
  er_block <- raw[, er_codes, drop = FALSE]
  names(er_block) <- names(ER_WAVE_MAP)

  cbind(out, er_block, ta_block)
}

cat("Stacking waves...\n")
panel <- bind_rows(lapply(WAVES, build_wave))

# Keep person-waves where the individual actually participated in TAS.
panel <- panel |> filter(in_tas_wave == 1)

# ---- 6. Outcome + light recoding --------------------------------------------
# Dependent variable: WTR CURRENTLY WORKING (1 = Yes, 5 = No) -> working {1,0}.
stopifnot("wtr_currently_working" %in% names(panel))
panel$working <- dplyr::case_when(
  panel$wtr_currently_working == 1 ~ 1L,
  panel$wtr_currently_working == 5 ~ 0L,
  TRUE                             ~ NA_integer_
)
# Convenience demographics (raw columns are kept untouched alongside).
panel$female <- dplyr::case_when(panel$sex == 2 ~ 1L, panel$sex == 1 ~ 0L,
                                 TRUE ~ NA_integer_)

# Order columns: keys first, outcome next, then everything else.
front <- c("person_id", "id_fam1968", "person_no", "wave", "in_tas_wave",
           "working", "wtr_currently_working", "female", "sex", "age")
panel <- panel[, c(front, setdiff(names(panel), front))]
panel <- panel |> arrange(person_id, wave)

# ---- 7. Save panel + codebook -----------------------------------------------
saveRDS(panel, file.path(OUT_DIR, "employment_panel_long.rds"))
write.csv(panel, file.path(OUT_DIR, "employment_panel_long.csv"), row.names = FALSE)

codebook <- bind_rows(
  ta_map |> transmute(concept, source = "TA", label,
                      code_2019 = `2019`, code_2021 = `2021`, code_2023 = `2023`,
                      n_waves),
  data.frame(
    concept = names(ER_WAVE_MAP), source = "ER",
    label = vapply(names(ER_WAVE_MAP),
                   function(k) lab_of[[ ER_WAVE_MAP[[k]][["2023"]] ]], character(1)),
    code_2019 = vapply(ER_WAVE_MAP, `[[`, character(1), "2019"),
    code_2021 = vapply(ER_WAVE_MAP, `[[`, character(1), "2021"),
    code_2023 = vapply(ER_WAVE_MAP, `[[`, character(1), "2023"),
    n_waves = 3L, stringsAsFactors = FALSE, row.names = NULL)
) |> arrange(source, concept)
write.csv(codebook, file.path(OUT_DIR, "employment_panel_codebook.csv"), row.names = FALSE)

# ---- 8. Report --------------------------------------------------------------
cat(sprintf("\nDONE.\n  Panel: %d rows x %d cols | %d persons | waves %s\n",
            nrow(panel), ncol(panel), length(unique(panel$person_id)),
            paste(sort(unique(panel$wave)), collapse = ", ")))
cat("  Rows per wave:\n");  print(table(panel$wave))
cat("\n  Outcome `working` by wave (1 = working, 0 = not):\n")
print(addmargins(table(wave = panel$wave, working = panel$working, useNA = "ifany")))
cat(sprintf("\n  Outputs in %s/:\n    employment_panel_long.rds / .csv\n    employment_panel_codebook.csv\n",
            OUT_DIR))
