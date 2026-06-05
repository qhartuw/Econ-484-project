# Run after build_employment_panel.R has produced:
#   data/processed/employment_panel_long.csv
#
# In this script:
#    1. Sample size summary (persons, person-waves, waves)
#    2. Summary statistics table (Table 1 for the paper)
#    3. Employment rate by wave
#    4. Employment rate by sex
#    5. Employment rate by key health/social predictors
#    6. Missingness summary

suppressPackageStartupMessages({
  library(dplyr)
  library(tidyr)
  library(ggplot2)
})

FIG_DIR <- file.path("data", "processed", "figures")
TAB_DIR <- file.path("data", "processed", "tables")
dir.create(FIG_DIR, recursive = TRUE, showWarnings = FALSE)
dir.create(TAB_DIR, recursive = TRUE, showWarnings = FALSE)

df_raw <- read.csv(file.path("data", "processed", "employment_panel_long.csv"),
                   stringsAsFactors = FALSE)

cat("=============================================================\n")
cat("  PSID TAS Employment Panel — Descriptive Statistics\n")
cat("=============================================================\n\n")

#  PSID yes/no: 1 = Yes, 5 = No -> 1/0; anything else -> NA
yn  <- function(x) ifelse(x == 1, 1L, ifelse(x == 5, 0L, NA_integer_))
#  Conditional health: 1 = has condition; 0 or 5 = does not; 8/9 = missing
has <- function(x) ifelse(x == 1, 1L, ifelse(x %in% c(0, 5), 0L, NA_integer_))

df <- df_raw %>%
  mutate(
    working          = as.integer(working),

    female           = case_when(sex == 2 ~ 1L, sex == 1 ~ 0L, TRUE ~ NA_integer_),
    sex_label        = case_when(sex == 1 ~ "Male", sex == 2 ~ "Female", TRUE ~ NA_character_),
    age              = ifelse(age >= 98, NA_real_, as.numeric(age)),

    health_limits    = yn(wtr_health_condition_limits_work),
    high_bp          = yn(wtr_ever_had_high_blood_pressure),
    depression       = has(wtr_depression),
    anxiety          = has(wtr_anxiety),
    nerve_meds       = has(wtr_take_nerve_meds),
    sleep_hours      = ifelse(of_hours_of_sleep_in_24_hr_period >= 98, NA_real_,
                              as.numeric(of_hours_of_sleep_in_24_hr_period)),

    in_relationship  = yn(wtr_romantic_relationship_now),
    drinks_alcohol   = yn(wtr_drink_alcohol),
    volunteered      = yn(wtr_did_volunteer_work),
    sports_team      = yn(wtr_member_of_sports_team),
    help_loans       = yn(wtr_help_pay_student_loans),
    news_freq        = ifelse(how_often_watched_or_read_news %in% c(8, 9), NA_real_,
                              as.numeric(how_often_watched_or_read_news)),

    hh_size          = as.numeric(num_in_fu),
    asinh_income     = asinh(total_family_income),

    wave_f           = factor(wave, levels = c(2019, 2021, 2023))
  )

n_persons     <- length(unique(df$person_id))
n_waves       <- length(unique(df$wave))
n_obs         <- nrow(df)
base_rate     <- mean(df$working, na.rm = TRUE)

cat(sprintf("Sample overview\n"))
cat(sprintf("  Person-wave observations : %d\n", n_obs))
cat(sprintf("  Unique individuals       : %d\n", n_persons))
cat(sprintf("  Survey waves             : %s\n",
            paste(sort(unique(df$wave)), collapse = ", ")))
cat(sprintf("  Overall employment rate  : %.1f%%\n\n", base_rate * 100))

wave_counts <- df %>%
  group_by(wave) %>%
  summarise(n = n(), employed = sum(working, na.rm = TRUE),
            pct_working = round(mean(working, na.rm = TRUE) * 100, 1),
            .groups = "drop")
cat("Observations per wave:\n")
print(wave_counts, row.names = FALSE)
cat("\n")

cont_vars <- list(
  age           = "Age (years)",
  sleep_hours   = "Hours of sleep (per 24 hrs)",
  hh_size       = "Household size",
  news_freq     = "News consumption (1=never … 5=daily)",
  asinh_income  = "Family income (arcsinh-transformed)"
)

bin_vars <- list(
  working       = "Currently working (outcome)",
  female        = "Female",
  health_limits = "Health limits work",
  high_bp       = "Ever had high blood pressure",
  depression    = "Diagnosed depression",
  anxiety       = "Diagnosed anxiety",
  nerve_meds    = "Takes nerve/psych medication",
  in_relationship = "Currently in romantic relationship",
  drinks_alcohol  = "Drinks alcohol",
  volunteered     = "Did volunteer work",
  sports_team     = "Member of sports team",
  help_loans      = "Helps pay own student loans"
)

cont_rows <- lapply(names(cont_vars), function(v) {
  x <- df[[v]]
  data.frame(
    Variable = cont_vars[[v]],
    Type     = "Continuous",
    Mean_or_Pct = round(mean(x, na.rm = TRUE), 2),
    SD       = round(sd(x, na.rm = TRUE), 2),
    N        = sum(!is.na(x)),
    Missing  = sum(is.na(x)),
    stringsAsFactors = FALSE
  )
})

bin_rows <- lapply(names(bin_vars), function(v) {
  x <- df[[v]]
  data.frame(
    Variable = bin_vars[[v]],
    Type     = "Binary (0/1)",
    Mean_or_Pct = round(mean(x, na.rm = TRUE) * 100, 1),
    SD       = NA_real_,
    N        = sum(!is.na(x)),
    Missing  = sum(is.na(x)),
    stringsAsFactors = FALSE
  )
})

table1 <- bind_rows(c(cont_rows, bin_rows))
names(table1)[3] <- "Mean (or % for binary)"

cat("------------------------------------------------------------\n")
cat("Table 1: Summary Statistics (all person-waves)\n")
cat("------------------------------------------------------------\n")
print(table1, row.names = FALSE)
cat("\nNote: Binary variables reported as %. Continuous variables: mean (SD).\n\n")

write.csv(table1, file.path(TAB_DIR, "table1_summary_stats.csv"), row.names = FALSE)
cat(sprintf("Saved: %s\n\n", file.path(TAB_DIR, "table1_summary_stats.csv")))

emp_by_group <- function(data, group_col, group_label) {
  data %>%
    filter(!is.na(.data[[group_col]]), !is.na(working)) %>%
    group_by(Group = .data[[group_col]]) %>%
    summarise(N = n(), Pct_Working = round(mean(working) * 100, 1), .groups = "drop") %>%
    mutate(Variable = group_label) %>%
    select(Variable, Group, N, Pct_Working)
}

group_vars <- c("sex_label", "depression", "anxiety", "health_limits",
                "in_relationship", "volunteered", "drinks_alcohol")
group_labels <- c("Sex", "Depression", "Anxiety", "Health limits work",
                  "In relationship", "Volunteered", "Drinks alcohol")

table2 <- bind_rows(mapply(emp_by_group,
                           group_col   = group_vars,
                           group_label = group_labels,
                           MoreArgs    = list(data = df),
                           SIMPLIFY    = FALSE))

cat("------------------------------------------------------------\n")
cat("Table 2: Employment Rate (%) by Subgroup\n")
cat("------------------------------------------------------------\n")
print(table2, row.names = FALSE)
cat("\n")

write.csv(table2, file.path(TAB_DIR, "table2_employment_by_group.csv"), row.names = FALSE)
cat(sprintf("Saved: %s\n\n", file.path(TAB_DIR, "table2_employment_by_group.csv")))

analysis_vars <- c("working", "female", "age", "sleep_hours", "hh_size",
                   "news_freq", "asinh_income", "health_limits", "high_bp",
                   "depression", "anxiety", "nerve_meds", "in_relationship",
                   "drinks_alcohol", "volunteered", "sports_team", "help_loans")

miss_df <- data.frame(
  Variable = analysis_vars,
  N_missing = sapply(analysis_vars, function(v) sum(is.na(df[[v]]))),
  Pct_missing = sapply(analysis_vars,
                       function(v) round(mean(is.na(df[[v]])) * 100, 1)),
  row.names = NULL
) %>% arrange(desc(Pct_missing))

cat("------------------------------------------------------------\n")
cat("Missingness Summary\n")
cat("------------------------------------------------------------\n")
print(miss_df, row.names = FALSE)
cat("\n")

# Figures:

theme_paper <- theme_minimal(base_size = 13) +
  theme(
    plot.title    = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(colour = "grey40", size = 11),
    axis.title    = element_text(size = 12),
    legend.position = "bottom"
  )

# Figure 1: Employment rate by wave
fig1_data <- df %>%
  filter(!is.na(working)) %>%
  group_by(wave_f) %>%
  summarise(pct = mean(working) * 100, n = n(), .groups = "drop")

fig1 <- ggplot(fig1_data, aes(x = wave_f, y = pct, fill = wave_f)) +
  geom_col(width = 0.55, colour = "white") +
  geom_text(aes(label = sprintf("%.1f%%\n(n=%d)", pct, n)),
            vjust = -0.4, size = 4.2, fontface = "bold") +
  scale_fill_manual(values = c("#2166ac", "#4dac26", "#d6604d"),
                    guide = "none") +
  scale_y_continuous(limits = c(0, 100), labels = function(x) paste0(x, "%")) +
  labs(title    = "Figure 1: Employment Rate by Survey Wave",
       subtitle = "Share of PSID TAS respondents currently working",
       x        = "Survey Wave (Year)",
       y        = "% Currently Working") +
  theme_paper

ggsave(file.path(FIG_DIR, "fig1_employment_by_wave.png"),
       fig1, width = 7, height = 5, dpi = 150)
cat(sprintf("Saved: %s\n", file.path(FIG_DIR, "fig1_employment_by_wave.png")))

# Figure 2: Employment by sex x wave
fig2_data <- df %>%
  filter(!is.na(working), !is.na(sex_label)) %>%
  group_by(wave_f, sex_label) %>%
  summarise(pct = mean(working) * 100, .groups = "drop")

fig2 <- ggplot(fig2_data, aes(x = wave_f, y = pct, fill = sex_label)) +
  geom_col(position = position_dodge(width = 0.65), width = 0.55, colour = "white") +
  geom_text(aes(label = sprintf("%.1f%%", pct)),
            position = position_dodge(width = 0.65),
            vjust = -0.4, size = 3.8) +
  scale_fill_manual(values = c("Female" = "#d6604d", "Male" = "#2166ac"),
                    name = "Sex") +
  scale_y_continuous(limits = c(0, 100), labels = function(x) paste0(x, "%")) +
  labs(title    = "Figure 2: Employment Rate by Sex and Wave",
       subtitle = "PSID TAS respondents; bars show % currently working",
       x        = "Survey Wave", y = "% Currently Working") +
  theme_paper

ggsave(file.path(FIG_DIR, "fig2_employment_by_sex.png"),
       fig2, width = 8, height = 5, dpi = 150)
cat(sprintf("Saved: %s\n", file.path(FIG_DIR, "fig2_employment_by_sex.png")))

# Figure 3: Employment rate by health/social predictors
pred_groups <- tribble(
  ~var,            ~label,                    ~category,
  "depression",    "Depression",              "Health",
  "anxiety",       "Anxiety",                 "Health",
  "health_limits", "Health limits work",      "Health",
  "nerve_meds",    "Takes psych meds",        "Health",
  "high_bp",       "High blood pressure",     "Health",
  "in_relationship","In relationship",        "Social",
  "volunteered",   "Volunteered",             "Social",
  "sports_team",   "Sports team member",      "Social",
  "drinks_alcohol","Drinks alcohol",          "Social"
)

fig3_data <- pred_groups %>%
  rowwise() %>%
  mutate(
    pct_yes = mean(df$working[df[[var]] == 1], na.rm = TRUE) * 100,
    pct_no  = mean(df$working[df[[var]] == 0], na.rm = TRUE) * 100
  ) %>%
  ungroup() %>%
  pivot_longer(cols = c(pct_yes, pct_no),
               names_to = "group", values_to = "pct") %>%
  mutate(group = ifelse(group == "pct_yes", "Has trait", "Does not have trait"))

fig3 <- ggplot(fig3_data,
               aes(x = reorder(label, pct), y = pct, fill = group)) +
  geom_col(position = position_dodge(0.75), width = 0.65, colour = "white") +
  coord_flip() +
  facet_wrap(~category, scales = "free_y", ncol = 1) +
  scale_fill_manual(values = c("Has trait" = "#d6604d",
                               "Does not have trait" = "#2166ac"),
                    name = NULL) +
  scale_y_continuous(labels = function(x) paste0(x, "%")) +
  labs(title    = "Figure 3: Employment Rate by Predictor Status",
       subtitle = "Red = respondents with the trait; Blue = without",
       x        = NULL, y = "% Currently Working") +
  theme_paper +
  theme(strip.text = element_text(face = "bold", size = 12))

ggsave(file.path(FIG_DIR, "fig3_employment_predictors.png"),
       fig3, width = 9, height = 9, dpi = 150)
cat(sprintf("Saved: %s\n", file.path(FIG_DIR, "fig3_employment_predictors.png")))

# Figure 4: Age distribution by wave
fig4 <- ggplot(df %>% filter(!is.na(age)),
               aes(x = age, fill = wave_f)) +
  geom_histogram(binwidth = 1, colour = "white", alpha = 0.8,
                 position = "identity") +
  facet_wrap(~wave_f, ncol = 3) +
  scale_fill_manual(values = c("#2166ac", "#4dac26", "#d6604d"),
                    guide = "none") +
  labs(title    = "Figure 4: Age Distribution by Survey Wave",
       subtitle = "PSID TAS respondents (Transition into Adulthood supplement)",
       x        = "Age (years)", y = "Count") +
  theme_paper

ggsave(file.path(FIG_DIR, "fig4_age_distribution.png"),
       fig4, width = 10, height = 4, dpi = 150)
cat(sprintf("Saved: %s\n", file.path(FIG_DIR, "fig4_age_distribution.png")))

# Figure 5: Missingness heatmap
miss_heat <- df %>%
  select(all_of(analysis_vars), wave_f) %>%
  group_by(wave_f) %>%
  summarise(across(all_of(analysis_vars),
                   ~ round(mean(is.na(.)) * 100, 1)),
            .groups = "drop") %>%
  pivot_longer(-wave_f, names_to = "variable", values_to = "pct_missing")

var_labels <- c(
  working = "Currently working (Y)", female = "Female", age = "Age",
  sleep_hours = "Sleep hours", hh_size = "Household size",
  news_freq = "News consumption", asinh_income = "Family income",
  health_limits = "Health limits work", high_bp = "High blood pressure",
  depression = "Depression", anxiety = "Anxiety", nerve_meds = "Psych meds",
  in_relationship = "In relationship", drinks_alcohol = "Drinks alcohol",
  volunteered = "Volunteered", sports_team = "Sports team",
  help_loans = "Helps pay loans"
)

miss_heat <- miss_heat %>%
  mutate(var_label = var_labels[variable])

fig5 <- ggplot(miss_heat, aes(x = wave_f, y = reorder(var_label, pct_missing),
                               fill = pct_missing)) +
  geom_tile(colour = "white", linewidth = 0.5) +
  geom_text(aes(label = ifelse(pct_missing > 0, paste0(pct_missing, "%"), "")),
            size = 3.2) +
  scale_fill_gradient(low = "#f7f7f7", high = "#d6604d",
                      name = "% Missing") +
  labs(title    = "Figure 5: Missing Data by Variable and Wave",
       subtitle = "Cells show % of observations missing that variable",
       x        = "Survey Wave", y = NULL) +
  theme_paper +
  theme(axis.text.y = element_text(size = 10))

ggsave(file.path(FIG_DIR, "fig5_missing_data.png"),
       fig5, width = 8, height = 7, dpi = 150)
cat(sprintf("Saved: %s\n", file.path(FIG_DIR, "fig5_missing_data.png")))
