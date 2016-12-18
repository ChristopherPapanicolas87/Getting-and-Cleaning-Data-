# Getting-and-Cleaning-Data-
#Script
##1. Downloading and Unzipping Data 
##2. Merge training and test sets 
###a. Read training tables 
###b. Read test tables 
###c. Read feature vectors 
###d. Read activity labels 
###e.Create and label columns 
###f. Merging all data into one 
##3. Extracting average and standard deviation 
###a. Report column names 
###b. create vector for subject ID, activity id, mean, and standard deviation
###c.Susbset the means and standard deviation from original data
##4.Create discriptive name name activities in the data sets
##5 Create a second, independent tidy data set with average of each variable for each activity and subjec
###a.Aggregate the second data set 
###b. Write the table in a txt file 

#Code: 
* subject - The ID of the test subject
* activity - The type of activity performed when the corresponding measurements were taken

#Activity 

* WALKING (value 1): subject was walking during the test
* WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
* SITTING (value 4): subject was sitting during the test
* STANDING (value 5): subject was standing during the test
* LAYING (value 6): subject was laying down during the test

#The Variables in the Script
* `x_train, `y_train, `x_test, `y_test, `subject_train and `subject_test contain data from the downloaded files.
* `x_data, `y_data and `subject_data merge the previous datasets to further analysis.
* `features contains the correct names for the x_data dataset, which are applied to the column names stored in
*`mrg_train, 'mrg_test-merging training data 
*`setAllinOne-all data merged as one
*`mean_and_std-mean-mean and STD columns 
*`activityID-This is the activity numbered 1-6 as Stated by Walking, Sitting, etc as shown above. 
*`subjectid-Id for each given data point 
*`mean-mean 
*`std-Standard deviation 
*`setForMeanandStd-subsetting data for mean and deviation 
*`SetwithAvtivityNames-subsetting data according to activitynames and mean and Stdv
*`TidySet-Txt file that will come out of the script

###Measurements for the data 

## Measurements

* `tBodyAccMeanX`
* `tBodyAccMeanY`
* `tBodyAccMeanZ`
* `tBodyAccStdX`
* `tBodyAccStdY`
* `tBodyAccStdZ`
* `tGravityAccMeanX`
* `tGravityAccMeanY`
* `tGravityAccMeanZ`
* `tGravityAccStdX`
* `tGravityAccStdY`
* `tGravityAccStdZ`
* `tBodyAccJerkMeanX`
* `tBodyAccJerkMeanY`
* `tBodyAccJerkMeanZ`
* `tBodyAccJerkStdX`
* `tBodyAccJerkStdY`
* `tBodyAccJerkStdZ`
* `tBodyGyroMeanX`
* `tBodyGyroMeanY`
* `tBodyGyroMeanZ`
* `tBodyGyroStdX`
* `tBodyGyroStdY`
* `tBodyGyroStdZ`
* `tBodyGyroJerkMeanX`
* `tBodyGyroJerkMeanY`
* `tBodyGyroJerkMeanZ`
* `tBodyGyroJerkStdX`
* `tBodyGyroJerkStdY`
* `tBodyGyroJerkStdZ`
* `tBodyAccMagMean`
* `tBodyAccMagStd`
* `tGravityAccMagMean`
* `tGravityAccMagStd`
* `tBodyAccJerkMagMean`
* `tBodyAccJerkMagStd`
* `tBodyGyroMagMean`
* `tBodyGyroMagStd`
* `tBodyGyroJerkMagMean`
* `tBodyGyroJerkMagStd`
* `fBodyAccMeanX`
* `fBodyAccMeanY`
* `fBodyAccMeanZ`
* `fBodyAccStdX`
* `fBodyAccStdY`
* `fBodyAccStdZ`
* `fBodyAccMeanFreqX`
* `fBodyAccMeanFreqY`
* `fBodyAccMeanFreqZ`
* `fBodyAccJerkMeanX`
* `fBodyAccJerkMeanY`
* `fBodyAccJerkMeanZ`
* `fBodyAccJerkStdX`
* `fBodyAccJerkStdY`
* `fBodyAccJerkStdZ`
* `fBodyAccJerkMeanFreqX`
* `fBodyAccJerkMeanFreqY`
* `fBodyAccJerkMeanFreqZ`
* `fBodyGyroMeanX`
* `fBodyGyroMeanY`
* `fBodyGyroMeanZ`
* `fBodyGyroStdX`
* `fBodyGyroStdY`
* `fBodyGyroStdZ`
* `fBodyGyroMeanFreqX`
* `fBodyGyroMeanFreqY`
* `fBodyGyroMeanFreqZ`
* `fBodyAccMagMean`
* `fBodyAccMagStd`
* `fBodyAccMagMeanFreq`
* `fBodyBodyAccJerkMagMean`
* `fBodyBodyAccJerkMagStd`
* `fBodyBodyAccJerkMagMeanFreq`
* `fBodyBodyGyroMagMean`
* `fBodyBodyGyroMagStd`
* `fBodyBodyGyroMagMeanFreq`
* `fBodyBodyGyroJerkMagMean`
* `fBodyBodyGyroJerkMagStd`
* `fBodyBodyGyroJerkMagMeanFreq`

