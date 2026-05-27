
# Outcome:  family received food stamps last year - this is a BINARY outcome
# the general idea here is that we want to see what various variables best predict food stamps in a fixed effects model
# Sample:   CDS-eligible children, PSID waves 1999–2021
# ID strategy: child (person) fixed effects + wave fixed effects


# install.packages(c("asciiSetupReader", "dplyr", "fixest"))
library(asciiSetupReader)
library(dplyr)
library(fixest)


# Load raw PSID data
# real_names = FALSE keeps PSID codes as column names. Required because PSID labels aren't unique across waves (every wave has "AGE OF HEAD" etc.)

J <- read_ascii_setup(
  "J362233/J362233.txt",
  "J362233/J362233.sas",
  use_clean_names = FALSE
)

stopifnot(exists("J"), nrow(J) > 0)
cat("Loaded", nrow(J), "child observations,", ncol(J), "variables\n")


# 2. Wave-by-wave variable mapping
# One row per PSID wave. Columns name the variable code for each concept.
# Food stamps (F11) refers to calendar year T-1 (year before the interview).

wave_map <- data.frame(
  wave     = c(1999, 2001, 2003, 2005, 2007, 2009,
               2011, 2013, 2015, 2017, 2019, 2021),
  fs_var   = c("ER14255","ER18386","ER21652","ER25654","ER36672","ER42691",
               "ER48007","ER53704","ER60719","ER66766","ER72770","ER78847"),
  age_var  = c("ER17013","ER21017","ER25017","ER36017","ER42017","ER47317",
               "ER53017","ER60017","ER66017","ER72017","ER78017","ER82018"),
  kids_var = c("ER17016","ER21020","ER25020","ER36020","ER42020","ER47320",
               "ER53020","ER60021","ER66021","ER72021","ER78021","ER82022"),
  rent_var = c("ER17043","ER21042","ER25028","ER36028","ER42029","ER47329",
               "ER53029","ER60030","ER66030","ER72030","ER78031","ER82032"),
  edh_var  = c("ER16516","ER20457","ER24148","ER28047","ER41037","ER46981",
               "ER52405","ER58223","ER65459","ER71538","ER77599","ER81926"),
  eds_var  = c("ER16517","ER20458","ER24149","ER28048","ER41038","ER46982",
               "ER52406","ER58224","ER65460","ER71539","ER77600","ER81927"),
  stringsAsFactors = FALSE
)


# Reshape wide → long: one row per child-wave
# Pure base R: walk each row of wave_map, pull those columns from J,
# rbind the 12 mini-frames into one long panel.

panel <- do.call(rbind, lapply(seq_len(nrow(wave_map)), function(i) {
  row <- wave_map[i, ]
  data.frame(
    person_id   = paste(J$ER30001, J$ER30002, sep = "_"),
    sex         = J$ER32000,
    wave        = row$wave,
    food_stamps = J[[row$fs_var]],
    age_head    = J[[row$age_var]],
    n_kids      = J[[row$kids_var]],
    own_rent    = J[[row$rent_var]],
    ed_head     = J[[row$edh_var]],
    ed_spouse   = J[[row$eds_var]],
    stringsAsFactors = FALSE
  )
}))

cat("Long panel:", nrow(panel), "rows,",
    length(unique(panel$person_id)), "children,",
    length(unique(panel$wave)), "waves\n")


# Recode PSID missing codes → NA
l <- panel |>
  mutate(
    food_stamps = case_when(
      food_stamps == 1 ~ 1L,
      food_stamps == 5 ~ 0L,
      TRUE             ~ NA_integer_
    ),
    ed_head   = ifelse(ed_head   == 99, NA, ed_head),
    ed_spouse = ifelse(ed_spouse == 99, NA, ed_spouse),
    age_head  = ifelse(age_head %in% c(0, 999), NA, age_head),
    n_kids    = ifelse(n_kids   == 99, NA, n_kids),
    own_rent  = factor(own_rent,
                       levels = c(1, 5, 8),
                       labels = c("Own", "Rent", "Neither")),
    no_spouse_ed = as.integer(is.na(ed_spouse)),
    ed_spouse    = ifelse(is.na(ed_spouse), 0, ed_spouse)
  )


# Descriptives
cat("\n=== Food-stamp receipt by wave ===\n")
panel |>
  group_by(wave) |>
  summarize(
    n_obs        = sum(!is.na(food_stamps)),
    pct_received = mean(food_stamps, na.rm = TRUE) * 100,
    .groups = "drop"
  ) |>
  print()


# The model: linear probability with fixed effects
m_pooled <- feols(
  food_stamps ~ ed_head + ed_spouse + no_spouse_ed +
    n_kids + age_head + own_rent
  | wave,
  data = panel
)

m_twfe <- feols(
  food_stamps ~ ed_head + ed_spouse + no_spouse_ed +
    n_kids + age_head + own_rent
  | person_id + wave,
  data = panel
)

etable(
  m_pooled, m_twfe,
  headers = c("Year FE", "Person + Year FE"),
  digits  = 3,
  fitstat = c("n", "r2", "wr2")
)

# Save the cleaned panel
dir.create("data/processed", recursive = TRUE, showWarnings = FALSE)
saveRDS(panel, "data/processed/psid_panel_long.rds")
