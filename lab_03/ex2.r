duration = faithful$eruptions 
range(duration) 
breaks = seq(1.5, 5.5, by=0.5)    # half-integer sequence 
breaks
duration.cut = cut(duration, breaks, right=FALSE) 
duration.freq = table(duration.cut) 
duration.freq
duration.cut

max(duration.freq)