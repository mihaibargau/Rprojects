setwd("C:\Users\Mihai\Documents\Rprojects")

birdflu <- read.table(file = "BirdFluCases.txt", header = TRUE, dec = ".")



names(birdflu)
str(birdflu)
an <- c(birdflu$Year)

nrcoloane = 0;
for(x in names(birdflu))
  nrcoloane=nrcoloane+1

print(birdflu[1,2:nrcoloane])

print("Total cazuri 2003")
print(sum(birdflu[1,2:nrcoloane]))


print("Total cazuri 2005")
print(sum(birdflu[3,2:nrcoloane]))

sume_coloane <- c(colSums(birdflu[2:16]))


nrmax=max(sume_coloane)
print(nrmax)

nrmin=min(sume_coloane)
print(nrmin)


index_coloana = which.max(sume_coloane)
print("Tara cu cele mai multe cazuri")
names(birdflu[index_coloana+1])

index_coloana = which.min(sume_coloane)
print("Tara cu cele mai putine cazuri")
names(birdflu[index_coloana+1])




