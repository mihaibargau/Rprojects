library("readxl")
setwd("C:/Users/student.E28-25-PC.000.001/Documents/R86")
TP <- read.table(file = "Temperature.txt", header = TRUE, dec = ".")
names(TP)
str(TP)

Temp.YeMo <- matrix(nrow = 16, ncol = 12)
AllYears <- unique(TP$Year)
for (i in 1:16) {
	ThisYear <- AllYears[i]
	TPi <- TP[TP$Year == ThisYear ,]
    Temp.YeMo[i,] <- tapply(TPi$Temperature, FUN=mean, INDEX =TPi$Month , na.rm = TRUE)
    sd(TPi$Temperature)
}
Temp.YeMo

