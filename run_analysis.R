## create directory

if (!file.exists("data")) {
  dir.create("data")
}

setwd("./data")
##  download and unzip

file.url<-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' 
download.file(file.url,destfile='smartphones.zip') 

unzip('./smartphones.zip',exdir='.',overwrite=TRUE) 

# change the wd
setwd("./UCI HAR Dataset")

library(dplyr)

#read the data
subject_test <- read.table("./test/subject_test.txt") 
subject_train <- read.table("./train/subject_train.txt") 
X_test <- read.table("./test/X_test.txt") 
X_train <- read.table("./train/X_train.txt") 
y_test <- read.table("./test/y_test.txt") 
y_train <- read.table("./train/y_train.txt") 

activity_labels <- read.table("./activity_labels.txt") 
features <- read.table("./features.txt")   

#merge train and test sets
merge_data <- rbind(X_train,X_test)

#extract mean and standard deviation data
mean_stdev <- grep("mean()|std()", features[, 2])  
merge_data <- merge_data[,mean_stdev] 

#combine with features
new_features <- sapply(features[, 2], function(x) {gsub("[()]", "",x)})
names(merge_data) <- new_features[mean_stdev]

#combine subject and activity

subject <- rbind(subject_train, subject_test) 
names(subject) <- 'subject' 
activity <- rbind(y_train, y_test) 
names(activity) <- 'activity' 

# combine into one dataset
final_data <- cbind(subject,activity, merge_data)

act_group <- factor(final_data$activity) 
levels(act_group) <- activity_labels[,2] 
final_data$activity <- act_group 

## produce file

tidy_data<-aggregate(. ~subject + activity, final_data, mean)
tidy_data<-tidy_data[order(tidy_data$subject,tidy_data$activity),]
write.table(tidy_data, file = "tidy_data.txt",row.name=FALSE)

