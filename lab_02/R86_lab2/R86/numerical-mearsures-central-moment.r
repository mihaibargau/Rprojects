library(e1071)
duration = faithful$eruptions
moment(duration, order=3, center=TRUE)