############################################################
# PSID TAS Panel Construction and Data Cleaning
# -----------------------------------------------------------
# Build a person x wave LONG panel (waves 2019, 2021, 2023) from the
# PSID Data Center extract data/J362431/J362431.xlsx.
#
# The extract is WIDE: every variable is its own column named by its PSID
# code (e.g. TA190225). The three waves carry the SAME concepts under
# DIFFERENT codes (emp1 = TA190225 in 2019, TA210220 in 2021, TA230239 in
# 2023). We map each concept's per-wave codes to ONE friendly, time-varying
# column via an explicit hand map (VAR_MAP), then stack the waves.
#
# Run from the PROJECT ROOT (all paths are root-relative).
############################################################

library(readxl)
library(dplyr)

############################################################
# 1. Load data
############################################################

df <- read_excel("data/J362431/J362431.xlsx")

# Stable person identifier (constant across waves).
df$person_id <- paste(df$ER30001, df$ER30002, sep = "_")

############################################################
# 2. Explicit concept -> per-wave code map
#    Each entry: friendly_name = c("2019"=code, "2021"=code, "2023"=code).
#    A wave is simply omitted when the concept was not asked that year
#    (e.g. marital has no 2023 item, finresp no 2019 item) -> NA in panel.
############################################################

VAR_MAP <- list(
  # ---- Activities / social ----
  #club             = c("2019"="TA190022","2021"="TA210021","2023"="TA230021"),
  volunteer        = c("2019"="TA190029","2021"="TA210028","2023"="TA230028"),
  social_media     = c("2019"="TA190053","2021"="TA210050","2023"="TA230050"),
  follow_interests = c("2019"="TA190054","2021"="TA210051","2023"="TA230051"),

  # ---- Responsibility (B17) ----
  resp_earn  = c("2019"="TA190066","2021"="TA210057","2023"="TA230057"),
  resp_rent  = c("2019"="TA190067","2021"="TA210058","2023"="TA230058"),
  resp_bills = c("2019"="TA190068","2021"="TA210059","2023"="TA230059"),
  resp_money = c("2019"="TA190069","2021"="TA210060","2023"="TA230060"),

  # ---- Well-being frequency battery (B18) ----
  wb_happiness       = c("2019"="TA190070","2021"="TA210061","2023"="TA230061"),
  wb_interest        = c("2019"="TA190071","2021"="TA210062","2023"="TA230062"),
  wb_satisfied       = c("2019"="TA190072","2021"="TA210063","2023"="TA230063"),
  wb_belong          = c("2019"="TA190074","2021"="TA210065","2023"="TA230065"),
  wb_society_better  = c("2019"="TA190075","2021"="TA210066","2023"="TA230066"),
  wb_people_good     = c("2019"="TA190076","2021"="TA210067","2023"="TA230067"),
  wb_manage_daily    = c("2019"="TA190078","2021"="TA210069","2023"="TA230069"),
  wb_trusting_rel    = c("2019"="TA190079","2021"="TA210070","2023"="TA230070"),
  wb_confident_ideas = c("2019"="TA190081","2021"="TA210072","2023"="TA230072"),
  wb_life_direction  = c("2019"="TA190083","2021"="TA210074","2023"="TA230074"),
  feel_failure       = c("2019"="TA190119","2021"="TA210110","2023"="TA230113"),

  # ---- Gender (asymmetric: split, see grilling decision) ----
#  gender_identity    = c("2019"="TA190158","2021"="TA210153"),               # no 2023
#  sex_assigned_birth = c("2023"="TA230171"),                                 # 2023 only

  # ---- Employment (D1 / D9A) ----
  emp1            = c("2019"="TA190225","2021"="TA210220","2023"="TA230239"),
#  emp2            = c("2019"="TA190226","2021"="TA210221","2023"="TA230240"),
#  emp3            = c("2019"="TA190227","2021"="TA210222","2023"="TA230241"),
#  weeks_worked    = c("2019"="TA190230","2021"="TA210225","2023"="TA230244"),
#  weeks_emp_prior = c("2019"="TA190404","2021"="TA210404","2023"="TA230427"),
#  weeks_emp_before= c("2019"="TA190405","2021"="TA210405","2023"="TA230428"),

  # ---- Job search (D86) / education activity (D118) ----
#  search_public  = c("2019"="TA190602","2021"="TA210605","2023"="TA230628"),
#  search_private = c("2019"="TA190603","2021"="TA210606","2023"="TA230629"),
#  search_school  = c("2019"="TA190610","2021"="TA210613","2023"="TA230636"),
#  edu_activity_hrs = c("2019"="TA190658","2021"="TA210662","2023"="TA230685"),

  # ---- Income sources (E) ----
  #wages               = c("2019"="TA190664","2021"="TA210678","2023"="TA230691"),
  #bonus               = c("2019"="TA190667","2021"="TA210681","2023"="TA230694"),
  #other_labor         = c("2019"="TA190680","2021"="TA210694","2023"="TA230707"),
  #unemp_comp          = c("2019"="TA190683","2021"="TA210716","2023"="TA230715"),
  #unemp_comp_amt      = c("2019"="TA190684","2021"="TA210717","2023"="TA230716"),,
  #unemp_income_lastmo = c("2019"="TA190829","2021"="TA210867","2023"="TA230861"),

  # ---- Credit / loans (F) ----
  cc_balance   = c("2019"="TA190896","2021"="TA210933","2023"="TA230948"),
  cc_value     = c("2019"="TA190898","2021"="TA210935","2023"="TA230950"),
  loan_federal = c("2019"="TA190901","2021"="TA210938","2023"="TA230953"),
  loan_state   = c("2019"="TA190902","2021"="TA210939","2023"="TA230954"),
  loan_private = c("2019"="TA190903","2021"="TA210940","2023"="TA230955"),
  loan_other   = c("2019"="TA190904","2021"="TA210941","2023"="TA230956"),

  # ---- Education (G) ----
  edu_aspiration  = c("2019"="TA190913","2021"="TA210950","2023"="TA230986"),
  edu_expectation = c("2019"="TA190915","2021"="TA210952","2023"="TA230988"),
  grade_level     = c("2019"="TA190917","2021"="TA210954","2023"="TA230990"),
  hs_grad         = c("2019"="TA190918","2021"="TA210955","2023"="TA230991"),
  # Asymmetric college items aligned by meaning (see grilling decision):
  attended_college   = c("2019"="TA190927","2021"="TA210964","2023"="TA231000"), # G15 / G15A
  #currently_attending= c("2019"="TA190928","2021"="TA210965","2023"="TA231001"), # G16 / G15B
  major           = c("2019"="TA190952","2021"="TA210990","2023"="TA231027"),

  # ---- Health (H) ----
  health            = c("2019"="TA191004","2021"="TA211104","2023"="TA231145"),
  health_compare    = c("2019"="TA191005","2021"="TA211105","2023"="TA231146"),
  health_better     = c("2019"="TA191006","2021"="TA211106","2023"="TA231147"),
  learning_disorder = c("2019"="TA191067","2021"="TA211176","2023"="TA231229"),
  chronic           = c("2019"="TA191072","2021"="TA211181","2023"="TA231234"),
  health_insurance  = c("2019"="TA191928","2021"="TA212042","2023"="TA232095"),

  # ---- Race (L7) ----
  race = c("2019"="TA192131","2021"="TA212252","2023"="TA232303"),

  # ---- Scales / derived ----
  wellbeing_emo  = c("2019"="TA192149","2021"="TA212313","2023"="TA232320"),
  wellbeing_soc  = c("2019"="TA192150","2021"="TA212314","2023"="TA232321"),
  wellbeing_psy  = c("2019"="TA192151","2021"="TA212315","2023"="TA232322"),
  social_anxiety = c("2019"="TA192153","2021"="TA212318","2023"="TA232325"),
#  marital        = c("2019"="TA192158","2021"="TA212326"),                  # no 2023
#  finresp        = c("2021"="TA212328","2023"="TA232335"),                  # no 2019
  enrollment     = c("2019"="TA192190","2021"="TA212385","2023"="TA232392"),
  highest_edu    = c("2019"="TA192191","2021"="TA212386","2023"="TA232393"),
  mother_edu     = c("2019"="TA192192","2021"="TA212387","2023"="TA232394"),
  father_edu     = c("2019"="TA192194","2021"="TA212389","2023"="TA232396"),
  state          = c("2019"="TA192196","2021"="TA212391","2023"="TA232398"),

  # ---- Core / individual-file per-wave variables (ER) ----
  age              = c("2019"="ER34704","2021"="ER34904","2023"="ER35104"),
  fam_income       = c("2019"="ER77448","2021"="ER81775","2023"="ER85629"), # prior cal. yr
  interview_number = c("2019"="ER34701","2021"="ER34901","2023"="ER35101"),
  sequence_number  = c("2019"="ER34702","2021"="ER34902","2023"="ER35102"),
  relation_rp      = c("2019"="ER34703","2021"="ER34903","2023"="ER35103")
)

# Time-invariant columns carried onto every wave row.
INVARIANT <- c(person_id = "person_id", ER30001 = "ER30001", ER30002 = "ER30002",
               ER32000 = "ER32000", ER32006 = "ER32006")
TAS_FLAG  <- c("2019" = "TAS19", "2021" = "TAS21", "2023" = "TAS23")

############################################################
# 3. Reshape: one row per person-wave, concepts as time-varying columns
############################################################

build_wave <- function(yr) {
  yc <- as.character(yr)
  out <- data.frame(lapply(INVARIANT, function(v) df[[v]]),
                    stringsAsFactors = FALSE)
  names(out) <- names(INVARIANT)
  out$year <- yr
  for (nm in names(VAR_MAP)) {
    code <- unname(VAR_MAP[[nm]][yc])          # NA if concept absent this wave
    out[[nm]] <- if (!is.na(code) && code %in% names(df)) df[[code]] else NA
  }
  out[!is.na(df[[TAS_FLAG[yc]]]), ]            # keep TAS participants this wave
}

panel_raw <- bind_rows(lapply(c(2019, 2021, 2023), build_wave)) %>%
  arrange(person_id, year)

############################################################
# 3a. Add lagged well-being variables
#     Within each person (group_by), dplyr::lag() shifts values
#     back one row in the sorted wave order:
#       2021 row  <- 2019 value
#       2023 row  <- 2021 value
#       2019 row  <- NA  (no prior wave)
#     All lagged columns are named with a _lag suffix.
############################################################

WB_LAG_VARS <- c(
  "wb_happiness", "wb_interest", "wb_satisfied", "wb_belong",
  "wb_society_better", "wb_people_good", "wb_manage_daily",
  "wb_trusting_rel", "wb_confident_ideas", "wb_life_direction",
  "feel_failure",
  "wellbeing_emo", "wellbeing_soc", "wellbeing_psy",
  "social_anxiety"
)

panel_raw <- panel_raw %>%
  group_by(person_id) %>%
  mutate(across(all_of(WB_LAG_VARS), ~dplyr::lag(.), .names = "{.col}_lag")) %>%
  ungroup()

############################################################
# 4. Check panel structure
############################################################

cat("\nObservations:\n");            print(nrow(panel_raw))
cat("\nIndividuals:\n");             print(n_distinct(panel_raw$person_id))
cat("\nObservations by year:\n");    print(table(panel_raw$year))
cat("\nDuplicate person-year pairs:\n")
print(sum(duplicated(panel_raw[, c("person_id", "year")])))
cat("\nVariables in panel:\n");      print(ncol(panel_raw))

############################################################
# 5. Create cleaned analysis variables
############################################################

panel_clean <- panel_raw %>%
  mutate(

    # ---- Sex ----
    female = case_when(ER32000 == 2 ~ 1, ER32000 == 1 ~ 0, TRUE ~ NA_real_),
    sex_label = factor(ER32000, levels = c(1, 2), labels = c("Male", "Female")),

    # ---- Employment status (1st mention) ----
    emp1_clean = case_when(emp1 == 99 ~ NA_real_, TRUE ~ as.numeric(emp1)),
    emp1_working = case_when(emp1 == 1 ~ 1,
                             emp1 %in% c(2,3,4,5,6,7,8) ~ 0,
                             TRUE ~ NA_real_),
    emp1_label = factor(emp1_clean, levels = 1:8,
      labels = c("Working now","Temporarily laid off","Looking for work",
                 "Retired","Disabled","Keeping house","Student","Other")),

    # ---- Race ----
    race_clean = case_when(race %in% c(98, 99) ~ NA_real_, TRUE ~ as.numeric(race)),
    white = case_when(race_clean == 1 ~ 1, !is.na(race_clean) ~ 0, TRUE ~ NA_real_),
    black = case_when(race_clean == 2 ~ 1, !is.na(race_clean) ~ 0, TRUE ~ NA_real_),
    race_label = factor(race_clean),

    # ---- Education ----
    edu_aspiration_clean  = case_when(edu_aspiration  %in% c(98,99) ~ NA_real_,
                                      TRUE ~ as.numeric(edu_aspiration)),
    edu_expectation_clean = case_when(edu_expectation %in% c(98,99) ~ NA_real_,
                                      TRUE ~ as.numeric(edu_expectation)),
    ba_expectation = case_when(edu_expectation_clean >= 5 ~ 1,
                               edu_expectation_clean <  5 ~ 0, TRUE ~ NA_real_),
    highest_edu_clean = case_when(highest_edu == 99 ~ NA_real_,
                                  TRUE ~ as.numeric(highest_edu)),

    # ---- Health ----
    health_clean = case_when(health == 9 ~ NA_real_, TRUE ~ as.numeric(health)),
    health_label = factor(health_clean, levels = 1:5,
      labels = c("Excellent","Very Good","Good","Fair","Poor")),
    learning_disorder_binary = case_when(learning_disorder == 1 ~ 1,
                                         learning_disorder == 5 ~ 0, TRUE ~ NA_real_),
    chronic_binary = case_when(chronic == 1 ~ 1, chronic == 5 ~ 0, TRUE ~ NA_real_),

    # ---- Social anxiety ----
    social_anxiety_clean = case_when(social_anxiety == 9 ~ NA_real_,
                                     TRUE ~ as.numeric(social_anxiety)),

    # ---- Activities ----
    volunteer_binary = case_when(volunteer == 1 ~ 1, volunteer == 5 ~ 0, TRUE ~ NA_real_),
    #club_clean = case_when(club == 9 ~ NA_real_, TRUE ~ as.numeric(club)),
    #club_label = factor(club_clean),

    # ---- Family income ----
    fam_income_clean = case_when(fam_income < 0 ~ NA_real_, TRUE ~ as.numeric(fam_income)),
    log_income = log(fam_income_clean + 1),

    # ---- Well-being subscales (current wave) ----
    wellbeing_emo_clean = case_when(wellbeing_emo %in% c(8,9,98,99) ~ NA_real_,
                                    TRUE ~ as.numeric(wellbeing_emo)),
    wellbeing_soc_clean = case_when(wellbeing_soc %in% c(8,9,98,99) ~ NA_real_,
                                    TRUE ~ as.numeric(wellbeing_soc)),
    wellbeing_psy_clean = case_when(wellbeing_psy %in% c(8,9,98,99) ~ NA_real_,
                                    TRUE ~ as.numeric(wellbeing_psy)),

    # ---- Lagged well-being (prior wave): same missing codes as current ----
    # 2021 row = 2019 value; 2023 row = 2021 value; 2019 row = NA.
    wellbeing_emo_lag_clean  = case_when(wellbeing_emo_lag  %in% c(8,9,98,99) ~ NA_real_,
                                         TRUE ~ as.numeric(wellbeing_emo_lag)),
    wellbeing_soc_lag_clean  = case_when(wellbeing_soc_lag  %in% c(8,9,98,99) ~ NA_real_,
                                         TRUE ~ as.numeric(wellbeing_soc_lag)),
    wellbeing_psy_lag_clean  = case_when(wellbeing_psy_lag  %in% c(8,9,98,99) ~ NA_real_,
                                         TRUE ~ as.numeric(wellbeing_psy_lag)),
    social_anxiety_lag_clean = case_when(social_anxiety_lag == 9 ~ NA_real_,
                                         TRUE ~ as.numeric(social_anxiety_lag))
  )

############################################################
# 6. Quality Checks
############################################################

cat("\nEmployment Status:\n"); print(table(panel_clean$emp1_label, useNA = "ifany"))
cat("\nEmployment Dummy:\n");  print(table(panel_clean$emp1_working, useNA = "ifany"))
cat("\nRace:\n");              print(table(panel_clean$race_clean, useNA = "ifany"))
cat("\nHealth:\n");            print(table(panel_clean$health_label, useNA = "ifany"))
cat("\nVolunteer:\n");         print(table(panel_clean$volunteer_binary, useNA = "ifany"))

# Reshape sanity check: a time-varying variable must actually vary across waves.
cat("\nemp1 within-person variation (should be >0 persons changing):\n")
chk <- panel_clean %>% group_by(person_id) %>%
  filter(n() > 1) %>% summarise(varies = n_distinct(emp1[!is.na(emp1)]) > 1)
print(sum(chk$varies, na.rm = TRUE))

# Lag sanity check: for a person observed in all 3 waves, the 2021 row's
# lagged value must equal their 2019 row's current value.
cat("\nLag sanity check (wellbeing_emo_lag):\n")
lag_chk <- panel_clean %>%
  filter(!is.na(wellbeing_emo) & !is.na(wellbeing_emo_lag)) %>%
  group_by(person_id) %>% filter(n() >= 2) %>%
  arrange(person_id, year) %>%
  mutate(expected_lag = dplyr::lag(wellbeing_emo)) %>%
  filter(!is.na(expected_lag)) %>%
  summarise(lag_correct = all(wellbeing_emo_lag == expected_lag, na.rm = TRUE))
cat("  Persons where lag matches prior-wave value:",
    sum(lag_chk$lag_correct, na.rm = TRUE), "/", nrow(lag_chk), "\n")

cat("\nLagged well-being availability by wave:\n")
print(table(wave  = panel_clean$year,
            has_lag = !is.na(panel_clean$wellbeing_emo_lag)))

############################################################
# 7. Save datasets
############################################################

write.csv(panel_raw,   "data/J362431/psid_tas_panel.csv",       row.names = FALSE)
write.csv(panel_clean, "data/J362431/psid_tas_panel_clean.csv", row.names = FALSE)

cat("\nFiles saved successfully:\n")
cat("  data/J362431/psid_tas_panel.csv\n")
#cat("  data/J362431/psid_tas_panel_clean.csv\n")
