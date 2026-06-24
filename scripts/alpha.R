install.packages("psych")
library(psych)

#***alpha from 30 participants
#import data "alpha_30p"
library(readr)
alpha_30p <- read_csv("D:/A project/Scroll with the Flow/data/alpha_30p.csv")
View(alpha_30p)


#choose data column
eec <- alpha_30p[2:11]
aas <- alpha_30p[12:22]
aps <- alpha_30p[23:47]
suq <- alpha_30p[48:57]

#find alpha
alpha(ece)
alpha(aas)
alpha(aps)
alpha(suq)



