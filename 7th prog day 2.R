data<-read.csv("water_potability.csv")
data
relation<-lm(data$ph~data$Hardness)
relation
plot(relation)
df<-data.frame(s.Hardness=88)
result<-predict(relation,df)
result
plot(result)
