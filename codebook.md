Data Set Code Book : tidyDataSet5
April 26, 2015
Codebook prepared by Jalna 

Raw data set:
-------------
- Name    : Human Activity Recognition Using Smartphones Data Set
- Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
- Provider: UC Irvine Machine Learning Repository
- Url     : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Tidy data set:
--------------
The tidy dataset is built from the raw dataset by running on it the run_analysis.R script with R.
The 30 subjects, that were split in 2 groups (test and train) in the raw data set are kept in the tidy data set.
The 6 activities measured are also kept.
Not less than 561 features are present in the raw data set.
Only 79 features are kept in the tidy data set: measurements on the mean and standard deviation for each measurement.
* Compared to the raw data set, variable names have been cleaned: "-" and "," characters have been replaced by "_", and "()" characters have been removed. *
For each activity of each subject multiples values are recorded in the raw data set for each measurement.
In the dity data set we only keep the avarage of each measurement for each activity of each subject.

The variables in the tidy data set are:

| Name                          | Type      | Allowable values                                                         |
|-------------------------------|-----------|--------------------------------------------------------------------------|
| activity                      | character | LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS |
| subjectId                     | integer   | 1-30                                                                     |
| tBodyAcc_mean_X               | numeric   |                                                                          |
| tBodyAcc_mean_Y               | numeric   |                                                                          |
| tBodyAcc_mean_Z               | numeric   |                                                                          |
| tBodyAcc_std_X                | numeric   |                                                                          |
| tBodyAcc_std_Y                | numeric   |                                                                          |
| tBodyAcc_std_Z                | numeric   |                                                                          |
| tGravityAcc_mean_X            | numeric   |                                                                          |
| tGravityAcc_mean_Y            | numeric   |                                                                          |
| tGravityAcc_mean_Z            | numeric   |                                                                          |
| tGravityAcc_std_X             | numeric   |                                                                          |
| tGravityAcc_std_Y             | numeric   |                                                                          |
| tGravityAcc_std_Z             | numeric   |                                                                          |
| tBodyAccJerk_mean_X           | numeric   |                                                                          |
| tBodyAccJerk_mean_Y           | numeric   |                                                                          |
| tBodyAccJerk_mean_Z           | numeric   |                                                                          |
| tBodyAccJerk_std_X            | numeric   |                                                                          |
| tBodyAccJerk_std_Y            | numeric   |                                                                          |
| tBodyAccJerk_std_Z            | numeric   |                                                                          |
| tBodyGyro_mean_X              | numeric   |                                                                          |
| tBodyGyro_mean_Y              | numeric   |                                                                          |
| tBodyGyro_mean_Z              | numeric   |                                                                          |
| tBodyGyro_std_X               | numeric   |                                                                          |
| tBodyGyro_std_Y               | numeric   |                                                                          |
| tBodyGyro_std_Z               | numeric   |                                                                          |
| tBodyGyroJerk_mean_X          | numeric   |                                                                          |
| tBodyGyroJerk_mean_Y          | numeric   |                                                                          |
| tBodyGyroJerk_mean_Z          | numeric   |                                                                          |
| tBodyGyroJerk_std_X           | numeric   |                                                                          |
| tBodyGyroJerk_std_Y           | numeric   |                                                                          |
| tBodyGyroJerk_std_Z           | numeric   |                                                                          |
| tBodyAccMag_mean              | numeric   |                                                                          |
| tBodyAccMag_std               | numeric   |                                                                          |
| tGravityAccMag_mean           | numeric   |                                                                          |
| tGravityAccMag_std            | numeric   |                                                                          |
| tBodyAccJerkMag_mean          | numeric   |                                                                          |
| tBodyAccJerkMag_std           | numeric   |                                                                          |
| tBodyGyroMag_mean             | numeric   |                                                                          |
| tBodyGyroMag_std              | numeric   |                                                                          |
| tBodyGyroJerkMag_mean         | numeric   |                                                                          |
| tBodyGyroJerkMag_std          | numeric   |                                                                          |
| fBodyAcc_mean_X               | numeric   |                                                                          |
| fBodyAcc_mean_Y               | numeric   |                                                                          |
| fBodyAcc_mean_Z               | numeric   |                                                                          |
| fBodyAcc_std_X                | numeric   |                                                                          |
| fBodyAcc_std_Y                | numeric   |                                                                          |
| fBodyAcc_std_Z                | numeric   |                                                                          |
| fBodyAcc_meanFreq_X           | numeric   |                                                                          |
| fBodyAcc_meanFreq_Y           | numeric   |                                                                          |
| fBodyAcc_meanFreq_Z           | numeric   |                                                                          |
| fBodyAccJerk_mean_X           | numeric   |                                                                          |
| fBodyAccJerk_mean_Y           | numeric   |                                                                          |
| fBodyAccJerk_mean_Z           | numeric   |                                                                          |
| fBodyAccJerk_std_X            | numeric   |                                                                          |
| fBodyAccJerk_std_Y            | numeric   |                                                                          |
| fBodyAccJerk_std_Z            | numeric   |                                                                          |
| fBodyAccJerk_meanFreq_X       | numeric   |                                                                          |
| fBodyAccJerk_meanFreq_Y       | numeric   |                                                                          |
| fBodyAccJerk_meanFreq_Z       | numeric   |                                                                          |
| fBodyGyro_mean_X              | numeric   |                                                                          |
| fBodyGyro_mean_Y              | numeric   |                                                                          |
| fBodyGyro_mean_Z              | numeric   |                                                                          |
| fBodyGyro_std_X               | numeric   |                                                                          |
| fBodyGyro_std_Y               | numeric   |                                                                          |
| fBodyGyro_std_Z               | numeric   |                                                                          |
| fBodyGyro_meanFreq_X          | numeric   |                                                                          |
| fBodyGyro_meanFreq_Y          | numeric   |                                                                          |
| fBodyGyro_meanFreq_Z          | numeric   |                                                                          |
| fBodyAccMag_mean              | numeric   |                                                                          |
| fBodyAccMag_std               | numeric   |                                                                          |
| fBodyAccMag_meanFreq          | numeric   |                                                                          |
| fBodyBodyAccJerkMag_mean      | numeric   |                                                                          |
| fBodyBodyAccJerkMag_std       | numeric   |                                                                          |
| fBodyBodyAccJerkMag_meanFreq  | numeric   |                                                                          |
| fBodyBodyGyroMag_mean         | numeric   |                                                                          |
| fBodyBodyGyroMag_std          | numeric   |                                                                          |
| fBodyBodyGyroMag_meanFreq     | numeric   |                                                                          |
| fBodyBodyGyroJerkMag_mean     | numeric   |                                                                          |
| fBodyBodyGyroJerkMag_std      | numeric   |                                                                          |
| fBodyBodyGyroJerkMag_meanFreq | numeric   |                                                                          |
