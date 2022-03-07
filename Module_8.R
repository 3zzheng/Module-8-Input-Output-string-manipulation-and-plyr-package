setwd("~/Downloads")
x <-  read.table("dataset.txt",header=TRUE,sep=",")
x
library("plyr")
y <- ddply(x,"Sex",transform, Grade.Average=mean(Grade))
y
write.table(y,"Sorted_Average",sep=",")
i_students <- subset(y, grepl("i", y$Name, ignore.case=T))
i_students
write.table(i_students,"Students_i",sep=",")
