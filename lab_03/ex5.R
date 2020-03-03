duration = faithful$eruptions 
breaks = seq(1.5, 5.5, by=0.5) 
duration.cut = cut(duration, breaks, right=FALSE) 
duration.freq = table(duration.cut)
duration.cumfreq = cumsum(duration.freq)
duration.cumfreq 
cbind(duration.cumfreq) 
duration.cumfreq 