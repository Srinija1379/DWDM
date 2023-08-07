# Given data
data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

# (a) Smoothing by Bin Mean
bin_means <- tapply(data, gl(3, length(data)/3), mean)
smoothed_mean <- rep(bin_means, each = length(data)/3)

# (b) Smoothing by Bin Median
bin_medians <- tapply(data, gl(3, length(data)/3), median)
smoothed_median <- rep(bin_medians, each = length(data)/3)

# (c) Smoothing by Bin Boundaries
bin_boundaries <- tapply(data, gl(3, length(data)/3), function(x) c(min(x), max(x)))
smoothed_boundaries <- rep(bin_boundaries, each = length(data)/3)

# Print the results
cat("(a) Smoothing by Bin Mean:\n", smoothed_mean, "\n\n")
cat("(b) Smoothing by Bin Median:\n", smoothed_median, "\n\n")
cat("(c) Smoothing by Bin Boundaries:\n", smoothed_boundaries, "\n")
