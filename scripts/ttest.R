# t-test Gender-Mindless

# import data "gender_mindless"
library(readr)
gender_ttest <- read_csv("D:/A project/Scroll with the Flow/data/gender_ttest.csv")
View(gender_ttest)

library(psych)

# label gender
gender_ttest$Gender <- factor(gender_ttest$Gender, labels = c("male", "female"))
gender_ttest

# describe data
describeBy(Mindless ~ Gender, data = gender_ttest)

# t-test Mindless -with- Male-Female
t.test(Mindless ~ Gender, data = gender_ttest, var.equal = TRUE)

# effect size (not nescessary)
install.packages("effectsize")
library(effectsize)
cohen.d(Mindless ~ Gender, data = gender_ttest)

