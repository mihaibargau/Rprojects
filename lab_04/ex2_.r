set.seed(1)
fete<-rbinom(1000, 1,.48)
print(fete)
c=0
p=0
S=0

for(i in 1:1000) {
  if(fete[i]==0){
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