# process model 5
# import data "avg_score"
# install package processR

process(model=7, y="Procrast", x="Exhaust", m="Mindless", w="Anxiety",
        cov="Anxiety", moments=1, jn=1, center=1, plot=1, boot=10000, 
        seed=1234, data = avg_score)

#########################################

#<<<<<< Standardized data >>>>>>>>>(if not)
data_z <- as.data.frame(scale(avg_score))

process(model=7, y="Procrast", x="Exhaust", m="Mindless", w="Anxiety",
        cov="Anxiety", moments=1, jn=1, center=1, plot=1, boot=10000, 
        seed=1234, data = data_z)
