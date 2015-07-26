## Code book 

### Data Set
The resulting dataset is a summary of the original Human Activity Recognition Using Smartphones Dataset:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The raw measurements from different files of the original data set are joined and transformed into one data table as describd below

### Resulting data set

180 observations of 68 variables, of which

Descriptive fields:

* Subject: Identifies the person. Numeric identifier in the range (1-30) 
* Activity: Factor with descriptive activity identification.

Variables:

For all the variables of the original dataset (listed below), only mean and standard deviation measurements were taken into resulting dataset. 
Each data set row represent average of each variable measurement for each combination of descriptive fields.    

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

### Transformations

The following transformations were applied to get the resulting data set:

* load training and test datasets of the original data 
* merge them into one data frame
* load variable names and apply to data frame
* filter data frame columns to contain only mean and standard deviation for each measurement
* load training and test subjects sequences of the original data and merge into one data frame
* load training and test activities sequences of the original data and merge into one data frame
* append measurements data frame with subject and activity information
* load activity names and replace numeric activity codes with activity names
* create the resulting summarized data set with the average of each variable for each activity and each subject

