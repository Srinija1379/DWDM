marks<-c(55,60,71,63,55,65,50,55,58,59,61,63,65,67,71,72,75)
num_bins<-3
bins_eq_frequency<-cut(marks,breaks=num_bins,labels=FALSE)
hist(marks,breaks=num_bins,col="lightblue",xlab="marks",main="Equal_frequency(equi-depth)partitioning")