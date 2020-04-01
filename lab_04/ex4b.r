I = rnorm(10000,1.70,0.1)
print(I)

hist(
  I,
  freq=FALSE,
  main='Density',
  xlab='',
  ylab='')

dens = density(I)#, bw="SJ")

lines(dens, col='red', lwd=3)
