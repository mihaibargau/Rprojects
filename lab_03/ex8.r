duration = faithful$eruptions
waiting = faithful$waiting
head(cbind(duration, waiting))

plot(duration, waiting,  xlab="Erupiton duration",  ylab="Time waited")

abline(lm(waiting ~ duration)) 