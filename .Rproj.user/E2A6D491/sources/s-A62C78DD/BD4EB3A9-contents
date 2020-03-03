setwd("C:\Users\Mihai\Documents\Rprojects")

TP <- read.table(file = "Temperature.txt", header = TRUE, dec = ".")

names(TP)
str(TP)
Temp.YeMo <- matrix(nrow = 16, ncol = 12)
unique(TP$Year)


AllYears <- unique(TP$Year)
for (i in 1:16) {
  ThisYear <- AllYears[i]
  TPi <- TP[TP$Year == ThisYear ,]
  Temp.YeMo[i,] <- tapply(TPi$Temperature, FUN=mean, INDEX =TPi$Month , na.rm = TRUE)
}
Temp.YeMo