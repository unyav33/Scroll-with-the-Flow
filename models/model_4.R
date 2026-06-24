# process model 4
# import data "avg_score"

# install packageprocessR
install.packages("processR")
library(processR)

process(model=4, y="Procrast",x="Exhaust", m="Mindless", total = 1, 
        boot = 50000, moments = 0, plot = 1 ,seed=1234, data= avg_score, stand=1)

#########################################

#<<<<<< Standardized data >>>>>>>>>
data_z <- as.data.frame(scale(avg_score))

# process model 4_std
process(data = data_z,
        model=4, y="Procrast",x="Exhaust", m="Mindless", total = 1, 
        boot = 50000, moments = 0, plot = 1 ,seed=1234,)
