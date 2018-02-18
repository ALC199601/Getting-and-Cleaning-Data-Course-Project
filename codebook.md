Variables in the tidy data set are:

  tBodyAcc-mean-X/Y/Z

  tBodyAcc-std-X/Y/Z
  
  tGravityAcc-mean-X/Y/Z
  
  tGravityAcc-std-X/Y/Z
  
  tBodyAccJerk-mean-X/Y/Z
  
  tBodyAccJerk-std-X/Y/Z

  tBodyGyro-mean-X/Y/Z

  tBodyGyro-std-X/Y/Z

  tBodyGyroJerk-mean-X/Y/Z

  tBodyGyroJerk-std-X/Y/Z

  tBodyAccMag-mean
  
  tBodyAccMag-std
  
  tGravityAccMag-mean
  
  tGravityAccMag-std
  
  tBodyAccJerkMag-mean
  
  tBodyAccJerkMag-std
  
  tBodyGyroMag-mean
  
  tBodyGyroMag-std
  
  tBodyGyroJerkMag-mean
  
  tBodyGyroJerkMag-std
  
  fBodyAcc-mean-X/Y/Z

  fBodyAcc-std-X/Y/Z

  fBodyAcc-meanFreq-X/Y/Z

  fBodyAccJerk-mean-X/Y/Z

  fBodyAccJerk-std-X/Y/Z

  fBodyAccJerk-meanFreq-X/Y/Z

  fBodyGyro-mean-X/Y/Z
  
  fBodyGyro-std-X/Y/Z

  fBodyGyro-meanFreq-X/Y/Z

  fBodyAccMag-mean
  
  fBodyAccMag-std
  
  fBodyAccMag-meanFreq
  
  fBodyBodyAccJerkMag-mean
  
  fBodyBodyAccJerkMag-std
  
  fBodyBodyAccJerkMag-meanFreq
  
  fBodyBodyGyroMag-mean
  
  fBodyBodyGyroMag-std
  
  fBodyBodyGyroMag-meanFreq
  
  fBodyBodyGyroJerkMag-mean
  
  fBodyBodyGyroJerkMag-std
  
  fBodyBodyGyroJerkMag-meanFreq
  
  subject  
  
  activity

Activities are:

  WALKING
  
  WALKING_UPSTAIRS
  
  WALKING_DOWNSTAIRS
  
  SITTING
  
  STANDING
  
  LAYING
 

file url = https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The zip file contains the folder UCI HAR Dataset  whick contains 5 *.txt files and 2 folders.

The two folders are train and test whcih contain the data for this project.  The data in each is merged into a single file
that is then manipulated to provide the tidy_data.txt output file.

The original large data set is extracted using the terms mean and std (standard deviation) fromt the descriptions.

The code is commented the the beginning of blocks so a reader can follow what is occuring.

