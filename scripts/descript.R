install.packages("psych")
library(psych)

#import file "avg_score"
library(readr)
avg_score <- read_csv("D:/A project/Scroll with the Flow/models/avg_score.csv")
View(avg_score)

#describe data
describe(avg_score)
