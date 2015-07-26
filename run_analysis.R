run_analysis <- function() {
    
    # 1.Merges the training and the test sets to create one data set.
    result = rbind(
        read.table("data/train/x_train.txt"), 
        read.table("data/test/x_test.txt"))
    
    # 4.Appropriately labels the data set with descriptive variable names. 
    labels = as.vector(read.table("data/features.txt")[,2])
    colnames(result) <- labels
    
    # 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
    onlyMeanAndStd = labels[grep("mean\\(|std\\(", labels)]
    result = result[, onlyMeanAndStd]

    # Merge subjects
    activities = rbind(
        read.table("data/train/y_train.txt"),
        read.table("data/test/y_test.txt"))
    
    # Merge activities
    subjects = rbind(
        read.table("data/train/subject_train.txt"),
        read.table("data/test/subject_test.txt"))
    
    # Prepend subjets and activities columns to merged data 
    result = cbind(Subject = subjects[,1], Activity = activities[,1], result)
 
    # 3.Uses descriptive activity names to name the activities in the data set   
    activity_labels = read.table("data/activity_labels.txt")[,2]
    result$Activity = activity_labels[result$Activity]
    
    # 5.From the data set in step 4, creates a second, independent tidy data set 
    # with the average of each variable for each activity and each subject.
    tidy = aggregate(result[,3:ncol(result)], 
                        by=list(Activity = result$Activity, Subject = result$Subject), 
                        mean)
    
    # swap 1st and 2nd columns for a better look 
    tidy = tidy[c(2,1,3:ncol(tidy))]
    
    # write the tidy data set to a file
    write.table(tidy, file="tidy.txt", row.name=FALSE)
    
    message("DONE!")
    
    # return the tidy data set as the result
    tidy
}

# run
run_analysis()
