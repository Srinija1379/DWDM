# Given price data
prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 15, 15, 15, 15, 18, 18, 18, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 25, 25, 25, 25, 25, 28, 28, 30, 30, 30)

# (i) Equal-Frequency Partitioning
n_bins <- 3
equal_frequency_bins <- cut(prices, breaks = n_bins, labels = FALSE)

# (ii) Data Smoothing using Bin Means and Bin Boundaries
bin_means <- tapply(prices, equal_frequency_bins, mean)
bin_boundaries <- tapply(prices, equal_frequency_bins, function(x) c(min(x), max(x)))

# (iii) Plot Histogram
hist(prices, breaks = n_bins, main = "Histogram of Prices with Equal-Frequency Partitioning", xlab = "Price")
abline(v = bin_boundaries[1,], col = "red", lwd = 2)
abline(v = bin_boundaries[2,], col = "blue", lwd = 2)
abline(v = bin_boundaries[3,], col = "green", lwd = 2)
legend("topright", legend = c("Bin 1", "Bin 2", "Bin 3"), col = c("red", "blue", "green"), lwd = 2)
