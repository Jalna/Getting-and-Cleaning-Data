# Coursera / Getting and Cleaning Data / Course project
# This script creates from the UCI HAR Dataset a tidy data set that can be used
# for later analysis.
# Please read the README.md and the CodeBook.md for further details.

require(dplyr)

# Download and unzip the UCI HAR Dataset if not in the working directory
if(!file.exists("UCI HAR Dataset")) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        temp <- tempfile()
        download.file(fileUrl,temp)
        unzip(temp)
        unlink(temp)   
}

# SUBJECT
# -------
# Create a dataframe containing both the test and train subjects  
subject <- rbind(
        read.table("UCI HAR Dataset/test/subject_test.txt",sep="",
                   col.names="subjectId", colClasses="integer"),
        read.table("UCI HAR Dataset/train/subject_train.txt",sep="",
                   col.names="subjectId", colClasses="integer"))

# ACTIVITY
# --------
# Create a dataframe containing both the test and train activities
activity <- rbind(
        read.table("UCI HAR Dataset/test/y_test.txt",sep="",
                   col.names="activityId", colClasses="character"),
        read.table("UCI HAR Dataset/train/y_train.txt",sep="",
                   col.names="activityId", colClasses="character"))
# Read the activity list
activityList <- read.table("UCI HAR Dataset/activity_labels.txt",sep="",
                           col.names=c("activityId","activityName"),
                           colClasses=c("character","character"))
# In the activity dataframe, replace the activity id by the activity name
activity <- inner_join(activity,activityList,by="activityId")$activityName
# Clean the workspace
rm(activityList)

# FEATURE
# -------
# Only some specific features are required (measurements on the mean and 
# standard deviation) so we will load only them
# Read the feature list
featureList <- read.table("UCI HAR Dataset/features.txt",sep="",
                          col.names=c("featureId","featureName"),
                          colClasses=c("character","character"))
# Clean the feature names: replace "-" and "," by "_" and remove "()"
featureList$featureName <- gsub("-","_",featureList$featureName)
featureList$featureName <- gsub("\\()","",featureList$featureName)
featureList$featureName <- gsub("\\,","_",featureList$featureName)
# Retrieve indexes of required features (mean and standard deviation)
featureIndexMean <- grep("mean",featureList$featureName)
featureIndexStd  <- grep("std" ,featureList$featureName)
featureIndexReq  <- sort(c(featureIndexMean,featureIndexStd))
# Set a column class vector with "NULL" except for the required features
myColClass <- rep("NULL",nrow(featureList))
myColClass[featureIndexReq] <- "numeric"
# Create a dataframe containing only the requested features from both the test
# and train features
feature <- rbind(read.table("UCI HAR Dataset/test/X_test.txt", sep = "",
                            col.names  = featureList$featureName,
                            colClasses = myColClass),
                 read.table("UCI HAR Dataset/train/X_train.txt", sep = "",
                            col.names  = featureList$featureName,
                            colClasses = myColClass))
# Clean the workspace
rm(featureList,featureIndexMean,featureIndexStd,featureIndexReq,myColClass)

# BIND subjects, activities and requested features in a data frame
# ----------------------------------------------------------------
dataSet4 <- cbind(subject,activity,feature)
# Clean the workspace
rm(subject,activity,feature)

# SUMMARIZE
# ---------
# Create a tidy data set with the average of each variable for each activity 
# and each subject
tidyDataSet5 <- tbl_df(dataSet4) %>%
                arrange(activity,subjectId) %>%
                        group_by(activity,subjectId) %>%
                                summarise_each(funs(mean))
# Write the data set as a text file in the working directory
write.table(tidyDataSet5, file = "tidyDataSet5.txt", row.name=FALSE)

