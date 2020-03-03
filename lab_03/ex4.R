duration = faithful$eruptions 
breaks = seq(1.5, 5.5, by=0.5) 
duration.cut = cut(duration, breaks, right=FALSE) 
duration.freq = table(duration.cut)
duration.relfreq = duration.freq / nrow(faithful)
duration.cut 
old = options(digits=1) 
duration.relfreq 
duration.cut 
options(old)    # restore the old option
old = options(digits=1) 
old = options(digits=1) 
duration.freq 
options(old)    # restore the old option