
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
n_bins <- 3
equi_depth_bins <- cut(marks, breaks = n_bins, labels = FALSE)
min_mark <- min(marks)
max_mark <- max(marks)
width <- (max_mark - min_mark) / n_bins
equal_width_bins <- cut(marks, breaks = seq(min_mark, max_mark, by = width), labels = FALSE)
n_clusters <- 3
kmeans_clusters <- kmeans(matrix(marks, ncol = 1), centers = n_clusters)$cluster
par(mfrow = c(1, 3))
hist(marks, breaks = n_bins, main = "Equal-Frequency Partitioning", xlab = "Marks", col = "lightblue")
abline(v = unique(equi_depth_bins) + 0.5, col = "red", lwd = 2)
hist(marks, breaks = seq(min_mark, max_mark, by = width), main = "Equal-Width Partitioning", xlab = "Marks", col = "lightgreen")
abline(v = unique(equal_width_bins) + width / 2, col = "red", lwd = 2)
hist(marks, main = "Clustering (K-Means)", xlab = "Marks", col = "lightpink")
abline(v = kmeans_clusters + 0.5, col = "red", lwd = 2)
par(mfrow = c(1, 1))
