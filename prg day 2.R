# Load the dataset
data(mtcars)

# Set up the plotting area
plot(mtcars$mpg, mtcars$qsec, type = "n", xlab = "mpg", ylab = "qsec", main = "Line Chart with Multiple Lines")

# Add multiple lines to the plot
lines(mtcars$mpg, mtcars$qsec, col = "blue", type = "b", pch = 1, lty = 1)
lines(mtcars$mpg, mtcars$qsec + 1, col = "red", type = "b", pch = 2, lty = 2)
lines(mtcars$mpg, mtcars$qsec - 1, col = "green", type = "b", pch = 3, lty = 3)

# Add legend
legend("topright", legend = c("Line 1", "Line 2", "Line 3"), col = c("blue", "red", "green"), lty = c(1, 2, 3), pch = c(1, 2, 3))

# Add gridlines
grid()

# Show the plot

