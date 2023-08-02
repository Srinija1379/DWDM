data<-read.csv("diabetes.csv")
data
plot(data$BloodPressure,data$SkinThickness)
barplot(data$BloodPressure,data$SkinThickness)