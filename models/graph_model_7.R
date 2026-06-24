# create model 7 graph

install.packages("ggplot2")
library(ggplot2)
install.packages("dplyr")
library(dplyr)

read.table(text = ' -0.4985   -0.5830    4.3568
     0.0000   -0.5830    4.7034
     0.4985   -0.5830    5.0501
    -0.4985   -0.0000    4.8920
     0.0000   -0.0000    5.0548
     0.4985   -0.0000    5.2176
    -0.4985    0.5830    5.4273
     0.0000    0.5830    5.4062
     0.4985    0.5830    5.3851',
           col.names = c("Exhaust", "Anxiety", "Mindless")
) %>%
  mutate( Anxiety = factor(Anxiety)) %>%
  ggplot(aes(x=Exhaust, y=Mindless,  group = Anxiety, colour = Anxiety)) +
  geom_line() + geom_point()
