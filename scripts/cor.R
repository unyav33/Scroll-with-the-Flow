### find correlation ##
# import data "avg_score"

cor.test(avg_score$Exhaust, avg_score$Procrast, method = "pearson")
cor.test(avg_score$Exhaust, avg_score$Mindless, method = "pearson")
cor.test(avg_score$Exhaust, avg_score$Anxiety, method = "pearson")
cor.test(avg_score$Anxiety, avg_score$Procrast, method = "pearson")
cor.test(avg_score$Anxiety, avg_score$Mindless, method = "pearson")
cor.test(avg_score$Mindless, avg_score$Procrast, method = "pearson")
