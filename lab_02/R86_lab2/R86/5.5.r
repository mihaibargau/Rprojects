setwd("C:/Users/student.E28-25-PC.000.001/Documents/R86")
RK <- read.table(file = "Amphibian_road_Kills.txt", header = TRUE, dec = ".")
names(RK)

plot(x = RK$D_PARK, y = RK$TOT_N, 
     xlab = "Distance to park",
     ylab = "Number of dead animals")
