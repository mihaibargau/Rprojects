set.seed(1)
#a)
inaltimi <- rnorm(100,1.70,.1)
#b)
summary(inaltimi)
#c)
qnorm(.90, mean = 1.70, sd = .1)
#d)
pnorm(90, mean = 1.60, sd = .1)