# find beta

install.packages("lm.beta")     
library(lm.beta)

# a-path: SUQ ~ ECE
model_a <- lm(Mindless ~ Exhaust, data = avg_score)
lm.beta(model_a)

# b + c'-path: APS ~ SUQ + ECE
model_b <- lm(Procrast ~ Mindless + Exhaust, data = avg_score)
lm.beta(model_b)