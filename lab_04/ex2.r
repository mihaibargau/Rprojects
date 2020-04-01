set.seed(1)
F<-rbinom(10, 1,.48)
print(F)
c=0
p=0
S=0

for(i in 1:10) {
  if(F[i]==0){
    c=c+1 		
    S = S-10
  }else {
    S=S+10
    p=p+1			
  }
  
}
print(S)
print(c)
print(p)