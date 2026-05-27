install.packages("asciiSetupReader")
library(asciiSetupReader)

FoodPoverty <- read_ascii_setup("J362233/J362233.txt", "J362233/J362233.sas")
View(FoodPoverty)

