##Getting and Cleaning Data
##Christopher Papanicolas 

#1. Downloadig and unzip files
if(!file.exists("Data")) {dir.create("Data")}
fileUrl<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "Data/Dataset.zip")

unzip(zipfile="Data/Dataset.zip", exdir="Data")

#2. Merge training and the test sets
#Read training tables 
x_train <- read.table("Data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("Data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("Data/UCI HAR Dataset/train/subject_train.txt")

#Read test Tables 

x_test <-read.table("Data/UCI HAR Dataset/test/X_test.txt")
y_test <-read.table("Data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("Data/UCI HAR Dataset/test/subject_test.txt")

#Reading feature vector 

features <- read.table("Data/UCI HAR Dataset/features.txt")

#Read activity labels
activityLabels <- read.table("Data/UCI HAR Dataset/activity_labels.txt")

#Create Columns

colnames(x_train) <- features[,2]
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

# Merging all data into one set 

#3. Extract anverage and STD
mrg_train <- cbind(y_train, subject_train, x_train)
mrg_test <- cbind(y_test, subject_test, x_test)
setAllInOne <- rbind(mrg_train, mrg_test)

#Read Column names
colNames <- colnames(setAllInOne)

#Create Vector with Mean and STD
mean_and_std <- (grepl("activityId" , colNames) | 
                   grepl("subjectId" , colNames) | 
                   grepl("mean.." , colNames) | 
                   grepl("std.." , colNames) 
)

#Subsetting mean and Standard devion from original data 
setForMeanAndStd <- setAllInOne[ , mean_and_std == TRUE]

#4. Create and merge labels 
setWithActivityNames <- merge(setForMeanAndStd, activityLabels,
                             by='activityId',
                             all.x=TRUE)
#5. Create data set (One is in txt file)
TidySet <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
TidySet <- TidySet[order(TidySet$subjectId, TidySet$activityId),]

write.table(TidySet, "TidySet.txt", row.name=FALSE)

