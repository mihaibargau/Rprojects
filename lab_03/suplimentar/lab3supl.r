#Incarcati in R setul de date Titanic (disponibil prin link de pe pagina principala). 
#Analizati datele din acest fisier, cuprinzand macar urmatoarele:

directory     <- "C:/Users/Lenovo/Desktop/ModelareSiSimulare"

fisierTitanic <- file.path(directory, "trainTitanic.csv")

titanic       <- read.csv(file = fisierTitanic, header = TRUE)

#T1. Trasati grafic distributia pe clase a pasagerilor (atributul PClass)

hist(titanic$Pclass, main = "Distributia pasagerilor pe clase")


#T2. Trasati grafic distributia pasagerilor pe sexe.

sex <- titanic$Sex
sex <- sub("male", "1", sex)
sex <- sub("fe1",  "0", sex)
sex <- as.numeric(sex)
hist(sex, col = c("blue", "pink"),  xlim = c(0, 1), breaks = 2, main = "Distributia pasagerilor pe sexe")


  
#T3. Aflati media de varsta a femeilor de pe vas, respectiv a barbatilor de pe vas.
#    De asemenea, calculati deviatia standard a varstei femeilor si barbatilor.


mean(titanic$Age[titanic$Sex=="female"], na.rm = TRUE)
mean(titanic$Age[titanic$Sex=="male"], na.rm = TRUE)

sd(titanic$Age[titanic$Sex=="female"], na.rm = TRUE) #deviatie standard femei
sd(titanic$Age[titanic$Sex=="male"], na.rm = TRUE) #deviatie standard barbati

#T4. Caracterizati, printr-un grafic potrviti, distributia pe sexe a supravietuitorilor.


sex <- titanic$Sex[titanic$Survived==1]
sex <- sub("male", "1", sex)
sex <- sub("fe1",  "0", sex)
sex <- as.numeric(sex)
hist(sex, col = c("blue", "pink"),  xlim = c(0, 1), breaks = 2, main = "Distributia supravietuitorilor pe sexe")

