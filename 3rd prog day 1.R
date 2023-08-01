x<-c(200,300,400,600,1000)
min<-0
max<-1
#min max normalization
for(i in x)
{
  v=((i-200)/(1000-200))
  print(v)
}
#z score normalization
m<-mean(x)
s<-sd(x)
for(i in x)
{
  v=(i-m)/s
  print(v)
}
