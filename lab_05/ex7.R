library(snpar)
library(MASS)
get.seed = function(d) #get seed from system time
{
  t = as.numeric(Sys.time())
  s = floor(t %% (10^d))
  return(s)
}


#RANDU (a special case of MCG)

randu = function(x0, n) 
{
  x = rep(0,n+1)
  x[1] = x0
  for(i in 1:n+1)
  {
    if(i == 1)
      x[i] = x0
    else
      x[i] = (65539 * x[i-1]) %% (2^31)
  }
  return(x[-1])
}
chisq.test(randu(2,15)) 




lcg = function(a0, a1, m, x0, n) #linear congruential generator (LCG)
{
  x = rep(0,n+1)  # rep(x, times) or replicate (x, length.out) - replicate the values in x  (how many times 
  #or the length of replicate
  x[1] = x0
  for(i in 1:n+1)
  {
    if(i == 1)
      x[i] = x0
    else
      x[i] = (a0 + (a1 * x[i-1])) %% m
  }
  return(x)
}



#Linear Congruential Generator
#parameters for LCG
a0 = 43535
a1 = 231
m = 2^10
x0 = 25
n = 11


r = lcg(a0, a1, m, x0, n)
chisq.test(r) 



#Inversive Congruential Generator (ICG)
icg = function(a0, a1, m, x0, n) 
{
  x = rep(0, n+1)
  x[1] = x0
  for(i in 1:n+1)
  {
    if(i == 1)
      x[i] = x0
    else
    {
      if(x[i-1] == 0)
        x[i] = a0 %% m
      else
      {
        xi = (x[i-1]^(m-2)) %% m
        x[i] = (a0 + (a1 * x[i-1])) %% m
      }
    }
  }
  return(x)
}


a0 = 3
a1 = 1
m = 7
x0 = 1
n = 9
r = icg(a0, a1, m, x0, n)
chisq.test(r) 

