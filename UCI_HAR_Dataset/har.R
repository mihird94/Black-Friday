library(dplyr)
library(tidyr)

# 1. Read in Activity Labels and Features list

activity_labels <- read.table("activity_labels.txt"
                              , header = FALSE, col.names = c("numact", "actname"))
features <- read.table("features.txt"
                       , header = FALSE, col.names = c("numcol","colname"))
##Train##
x_train<-read.table("./train/X_train.txt",header=FALSE,col.names=features$colname)
y_train<-read.table("./train/y_train.txt",header=FALSE,col.names ="actlabel",sep=" ")
sub_train<-read.table("./train/subject_train.txt",header=FALSE,col.names="subject")
train<-cbind(sub_train,x_train,y_train)
##Test##
x_test<-read.table("./test/X_test.txt",header=FALSE,col.names=features$colname)
y_test<-read.table("./test/y_test.txt",header=FALSE,col.names ="actlabel",sep="")
sub_test<-read.table("./test/subject_test.txt",header=FALSE,col.names="subject")
test<-cbind(sub_test,x_test,y_test)
###
combined<-rbind(test,train)


