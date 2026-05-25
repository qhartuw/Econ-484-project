
# Ignore this i was just messing with some stuff

# library(ggplot2)

# psid <- read.fwf(
#  file = "J362155.txt",
#  widths = c(1, 4, 3, 5),
#  col.names = c("release", "family_id", "food_stamps", "wife_income")
#)

# head(psid)
# summary(psid)
# View(psid)

# lm of wife income on food stamp usage
# model <- lm(food_stamps ~ wife_income, data = psid)
# summary(model)

# graph ts
# library(ggplot2)

# ggplot(psid, aes(x = wife_income, y = food_stamps)) +
  # geom_point(alpha = 0.4, color = "steelblue") +
  # geom_smooth(method = "lm", color = "red", se = TRUE) +
  # labs(
    # title = "Food Stamps vs Wife's Labor Income",
    # subtitle = "PSID 1968",
    # x = "Wife's Labor Income ($)",
    # y = "Yearly Food Stamps ($)"
  # ) +
  # theme_minimal()

# 2 many 0 values for this to be interesting, try below

# Part 1: do they get food stamps at all?
# psid$any_stamps <- as.numeric(psid$food_stamps > 0)
# part1 <- glm(any_stamps ~ wife_income, data = psid, family = binomial(link = "probit"))
# summary(part1)

# Part 2: among those who do, how much?
# part2 <- lm(food_stamps ~ wife_income, data = psid, subset = food_stamps > 0)
# summary(part2)

