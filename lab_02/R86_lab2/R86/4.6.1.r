setwd("C:/Users/student.E28-25-PC.000.001/Documents/R86")
temperatures <- read.xlsx(file="Temperature.xls",sep="\t",header=TRUE)
names(temperatures)
str(temperatures)