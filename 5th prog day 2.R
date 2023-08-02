library(datasets)
data("AirPassengers")
hist(AirPassengers, 
     breaks = seq(100, 700, by = 150),
     main = "AirPassengers Histogram",
     xlab = "Passenger Count",
     ylab = "Frequency",
     col = "blue",
     border = "black")