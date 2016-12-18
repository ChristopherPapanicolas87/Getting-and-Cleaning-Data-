# Getting-and-Cleaning-Data-

###Summary:

*The script below downloads and unzips the data. Then the script commands all the data from the train, test, feature, and activity levels data to be read(using read.table). 
The script then request production of columns, merging all the data, isolates the data with a mean and Standard deviation(STD). Then the script creates a new table with the extracted
data. Then the data is then packaged into a tidy txt file as commanded in the R script. 
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


