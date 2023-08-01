pencil<-c("box1","box2","box3","box4","box5","box6","box7","box8","box9","box10")
pencil
number<-c(9,25,23,12,11,6,7,8,9,10)
df<-data.frame(pencil,number)
mean(number)
median(number)
mode_number<-names(table(number))[table(number)==max(table(number))]
print(mode_number)