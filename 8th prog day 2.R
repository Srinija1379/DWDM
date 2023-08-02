library(datasets)
data("water")
str(water)
plot(water$hardness, water$mortality, main = "Scatter Plot: Mortality vs Hardness",
     xlab = "Hardness", ylab = "Mortality", col = "blue")
lm_model <- lm(mortality ~ hardness, data = water)
abline(lm_model, col = "red")
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(lm_model, newdata = new_data)
cat("Predicted mortality for hardness = 88:", predicted_mortality)

