## Getting and Cleaning Data Course Project

The goal of the project is to summarize and tidy up the data about Human Activity Using Smartphones. The script that does the analysis is called run_analysis.R. The result of the analysis is a text file 'tidy.txt' with the data set described in the Code book. 

### Run the analysis

To repeat the analysis please do the following steps:

* fork the repo
* download archived data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* extract the archived folder into local repo directory next to run_analysis.R
* rename extracted folder to "Data". This is important, the script will search for test and training data sets under "Data" folder.
* in R (RStudio) set working directory to the local repo directory
* run the script run_analysis.R
* find tidy.txt in the same folder

### Steps of Analysis

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

