# Load the dataset
data(mtcars)

# Create a boxplot graph
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "Miles per Gallon", main = "Boxplot: mpg vs. cyl")

# Add gridlines
grid()
