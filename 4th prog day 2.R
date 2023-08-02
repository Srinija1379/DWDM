min<-50000
max<-100000
normalization=(80-50000)/(100000-50000)
normalization
x<-c(200,300,400,600,1000)
min<-0
max<-1
for(i in x)
{
  minmax=((i-200)/(1000-200))
  print(minmax)
}
m<-mean(x)
s<-sd(x)
for(i in x)
{
  v=(i-m)/s
  print(v)
}