# Coursera Getting_Cleaning_Data Adrian Johnston 22 Aug 2015
# CONTENTS
## ----SCRIPT WALKTRHOUGH
## ----CODEBOOK

The run_analysis.R file  consolidates the test and train data into a 'tidy' data frame, complete with named columns and meaningful activity labels. Only measurement fields not relating to mean and standard deviation measures are excluded, and remaining measures are aggregated to show the mean value grouped by the experiment subject and activity.

This script must be located in the same directory as the "test" and "train" folders of the UCI HAR data (and in the same directory as features.txt).

#CODE WALK THROUGH 
(How does this script address the assignment requirements?)

##1. Merges the training and the test sets to create one data set.
Lines 7-17
Train and Test Data is imported to a data frame then "unioned" together using rbind resulting in 3 data frames of equal row count (df.X_combined, df.subject_combined, df.y_combined.

Lines 19-23
A vector of column names (v.col_Names) is constructed from 2 literal strings and the contents of features.txt

Line 25
The 3 intermediate data frames are combined using cbind into one data frame containing all test and train data. (df.all_data)

##2.Extracts only the measurements on the mean and standard deviation for each measurement.
Line 30
A new data frame (df.required_data) is populated by taking only columns found in v.required_col_Names from data frame df.all_data

##3. Uses descriptive activity names to name the activities in the data set
Lines 33-34
Meaningful activity labels are imported and applied using match

##4. Appropriately labels the data set with descriptive variable names. 
Line 26
The column names from v.col_Names are applied to dataframe df.all_data

Line 28
A vector (v.required_col_Names) containing only the column names needed for the final output is populated>
THis vector contains:
    A column called "subject_ID"
    A column called "activity_ID
    All columns containing the string "std()" located using grep 
    All columns containing the string "mean()" located using grep
(Columns containing the strings "std()" or "mean()" are taken to indicate measures of 
standard deviation and mean respectively).

##5. A second, independent tidy data set with the average of each variable for each activity and each subject.

Line 38
Data is aggregated to show mean of values grouped by activity label/ID and subject ID

Line 39-41 cleanup of ambiguous columns after aggregate grouping

Line 43 
Final data is output in required format.

# CODEBOOK
ACTIVITY 18

    Activity performed by subject at time of measurement

ACTIVITY_ID 1

    Activity Code
        1    WALKING
        2	WALKING_UPSTAIRS
        3	WALKING_DOWNSTAIRS
        4	SITTING
        5	STANDING
        6	LAYING

SUBJECT_ID 2
    UNique Identifier of the subject (person participating in the experiment)
    
tBodyAcc-std()-X    18
	Mean of  'tBodyAcc-std()-X' readings [units not specified in original data set]

tBodyAcc-std()-Y	18
	Mean of  tBodyAcc-std()-Y readings [units not specified in original data set]
    
tBodyAcc-std()-Z	18
	Mean of  'tBodyAcc-std()-Z' readings [units not specified in original data set]
    
tGravityAcc-std()-X	18
	Mean of  tGravityAcc-std()-X readings [units not specified in original data set]
    
tGravityAcc-std()-Y	18
	Mean of  'tGravityAcc-std()-Y' readings [units not specified in original data set]
    
tGravityAcc-std()-Z	18
	Mean of  tGravityAcc-std()-Z readings [units not specified in original data set]
    
tBodyAccJerk-std()-X	18
	Mean of  'tBodyAccJerk-std()-X' readings [units not specified in original data set]
    
tBodyAccJerk-std()-Y	18
	Mean of  tBodyAccJerk-std()-Y readings [units not specified in original data set]
    
tBodyAccJerk-std()-Z	18
	Mean of  'tBodyAccJerk-std()-Z' readings [units not specified in original data set]
    
tBodyGyro-std()-X	18
	Mean of  tBodyGyro-std()-X readings [units not specified in original data set]
    
tBodyGyro-std()-Y	18
	Mean of  'tBodyGyro-std()-Y' readings [units not specified in original data set]
    
tBodyGyro-std()-Z	18
	Mean of  tBodyGyro-std()-Z readings [units not specified in original data set]
    
tBodyGyroJerk-std()-X	18
	Mean of  'tBodyGyroJerk-std()-X' readings [units not specified in original data set]
    
tBodyGyroJerk-std()-Y	18
	Mean of  tBodyGyroJerk-std()-Y readings [units not specified in original data set]
    
tBodyGyroJerk-std()-Z	18
	Mean of  'tBodyGyroJerk-std()-Z' readings [units not specified in original data set]
    
tBodyAccMag-std()	18
	Mean of  tBodyAccMag-std() readings [units not specified in original data set]
    
tGravityAccMag-std()	18
	Mean of  'tGravityAccMag-std()' readings [units not specified in original data set]
    
tBodyAccJerkMag-std()	18
	Mean of  tBodyAccJerkMag-std() readings [units not specified in original data set]
    
tBodyGyroMag-std()	18
	Mean of  'tBodyGyroMag-std()' readings [units not specified in original data set]
    
tBodyGyroJerkMag-std()	18
	Mean of  tBodyGyroJerkMag-std() readings [units not specified in original data set]
    
fBodyAcc-std()-X	18
	Mean of  'fBodyAcc-std()-X' readings [units not specified in original data set]
    
fBodyAcc-std()-Y	18
	Mean of  fBodyAcc-std()-Y readings [units not specified in original data set]
    
fBodyAcc-std()-Z	18
	Mean of  'fBodyAcc-std()-Z' readings [units not specified in original data set]
    
fBodyAccJerk-std()-X	18
	Mean of  fBodyAccJerk-std()-X readings [units not specified in original data set]
    
fBodyAccJerk-std()-Y	18
	Mean of  'fBodyAccJerk-std()-Y' readings [units not specified in original data set]
    
fBodyAccJerk-std()-Z	18
	Mean of  fBodyAccJerk-std()-Z readings [units not specified in original data set]
    
fBodyGyro-std()-X	18
	Mean of  'fBodyGyro-std()-X' readings [units not specified in original data set]
    
fBodyGyro-std()-Y	18
	Mean of  fBodyGyro-std()-Y readings [units not specified in original data set]
    
fBodyGyro-std()-Z	18
	Mean of  'fBodyGyro-std()-Z' readings [units not specified in original data set]
    
fBodyAccMag-std()	18
	Mean of  fBodyAccMag-std() readings [units not specified in original data set]
    
fBodyBodyAccJerkMag-std()	18
	Mean of  'fBodyBodyAccJerkMag-std()' readings [units not specified in original data set]
    
fBodyBodyGyroMag-std()	18
	Mean of  fBodyBodyGyroMag-std() readings [units not specified in original data set]
    
fBodyBodyGyroJerkMag-std()	18
	Mean of  'fBodyBodyGyroJerkMag-std()' readings [units not specified in original data set]
    
tBodyAcc-mean()-X	18
	Mean of  tBodyAcc-mean()-X readings [units not specified in original data set]
    
tBodyAcc-mean()-Y	18
	Mean of  'tBodyAcc-mean()-Y' readings [units not specified in original data set]
    
tBodyAcc-mean()-Z	18
	Mean of  tBodyAcc-mean()-Z readings [units not specified in original data set]
    
tGravityAcc-mean()-X	18
	Mean of  'tGravityAcc-mean()-X' readings [units not specified in original data set]
    
tGravityAcc-mean()-Y	18
	Mean of  tGravityAcc-mean()-Y readings [units not specified in original data set]
    
tGravityAcc-mean()-Z	18
	Mean of  'tGravityAcc-mean()-Z' readings [units not specified in original data set]
    
tBodyAccJerk-mean()-X	18
	Mean of  tBodyAccJerk-mean()-X readings [units not specified in original data set]
    
tBodyAccJerk-mean()-Y	18
	Mean of  'tBodyAccJerk-mean()-Y' readings [units not specified in original data set]
    
tBodyAccJerk-mean()-Z	18
	Mean of  tBodyAccJerk-mean()-Z readings [units not specified in original data set]
    
tBodyGyro-mean()-X	18
	Mean of  'tBodyGyro-mean()-X' readings [units not specified in original data set]
    
tBodyGyro-mean()-Y	18
	Mean of  tBodyGyro-mean()-Y readings [units not specified in original data set]
    
tBodyGyro-mean()-Z	18
	Mean of  'tBodyGyro-mean()-Z' readings [units not specified in original data set]
    
tBodyGyroJerk-mean()-X	18
	Mean of  tBodyGyroJerk-mean()-X readings [units not specified in original data set]
    
tBodyGyroJerk-mean()-Y	18
	Mean of  'tBodyGyroJerk-mean()-Y' readings [units not specified in original data set]
    
tBodyGyroJerk-mean()-Z	18
	Mean of  tBodyGyroJerk-mean()-Z readings [units not specified in original data set]
    
tBodyAccMag-mean()	18
	Mean of  'tBodyAccMag-mean()' readings [units not specified in original data set]
    
tGravityAccMag-mean()	18
	Mean of  tGravityAccMag-mean() readings [units not specified in original data set]
    
tBodyAccJerkMag-mean()	18
	Mean of  'tBodyAccJerkMag-mean()' readings [units not specified in original data set]
    
tBodyGyroMag-mean()	18
	Mean of  tBodyGyroMag-mean() readings [units not specified in original data set]
    
tBodyGyroJerkMag-mean()	18
	Mean of  'tBodyGyroJerkMag-mean()' readings [units not specified in original data set]
    
fBodyAcc-mean()-X	18
	Mean of  fBodyAcc-mean()-X readings [units not specified in original data set]
    
fBodyAcc-mean()-Y	18
	Mean of  'fBodyAcc-mean()-Y' readings [units not specified in original data set]
    
fBodyAcc-mean()-Z	18
	Mean of  fBodyAcc-mean()-Z readings [units not specified in original data set]
    
fBodyAcc-meanFreq()-X	18
	Mean of  'fBodyAcc-meanFreq()-X' readings [units not specified in original data set]
    
fBodyAcc-meanFreq()-Y	18
	Mean of  fBodyAcc-meanFreq()-Y readings [units not specified in original data set]
    
fBodyAcc-meanFreq()-Z	18
	Mean of  'fBodyAcc-meanFreq()-Z' readings [units not specified in original data set]
    
fBodyAccJerk-mean()-X	18
	Mean of  fBodyAccJerk-mean()-X readings [units not specified in original data set]
    
fBodyAccJerk-mean()-Y	18
	Mean of  'fBodyAccJerk-mean()-Y' readings [units not specified in original data set]
    
fBodyAccJerk-mean()-Z	18
	Mean of  fBodyAccJerk-mean()-Z readings [units not specified in original data set]
    
fBodyAccJerk-meanFreq()-X	18
	Mean of  'fBodyAccJerk-meanFreq()-X' readings [units not specified in original data set]
    
fBodyAccJerk-meanFreq()-Y	18
	Mean of  fBodyAccJerk-meanFreq()-Y readings [units not specified in original data set]
    
fBodyAccJerk-meanFreq()-Z	18
	Mean of  'fBodyAccJerk-meanFreq()-Z' readings [units not specified in original data set]
    
fBodyGyro-mean()-X	18
	Mean of  fBodyGyro-mean()-X readings [units not specified in original data set]
    
fBodyGyro-mean()-Y	18
	Mean of  'fBodyGyro-mean()-Y' readings [units not specified in original data set]
    
fBodyGyro-mean()-Z	18
	Mean of  fBodyGyro-mean()-Z readings [units not specified in original data set]
    
fBodyGyro-meanFreq()-X	18
	Mean of  'fBodyGyro-meanFreq()-X' readings [units not specified in original data set]
    
fBodyGyro-meanFreq()-Y	18
	Mean of  fBodyGyro-meanFreq()-Y readings [units not specified in original data set]
    
fBodyGyro-meanFreq()-Z	18
	Mean of  'fBodyGyro-meanFreq()-Z' readings [units not specified in original data set]
    
fBodyAccMag-mean()	18
	Mean of  fBodyAccMag-mean() readings [units not specified in original data set]
    
fBodyAccMag-meanFreq()	18
	Mean of  'fBodyAccMag-meanFreq()' readings [units not specified in original data set]
    
fBodyBodyAccJerkMag-mean()	18
	Mean of  fBodyBodyAccJerkMag-mean() readings [units not specified in original data set]
    
fBodyBodyAccJerkMag-meanFreq()	18
	Mean of  'fBodyBodyAccJerkMag-meanFreq()' readings [units not specified in original data set]
    
fBodyBodyGyroMag-mean()	18
	Mean of  fBodyBodyGyroMag-mean() readings [units not specified in original data set]
    
fBodyBodyGyroMag-meanFreq()	18
	Mean of  'fBodyBodyGyroMag-meanFreq()' readings [units not specified in original data set]
    
fBodyBodyGyroJerkMag-mean()	18
	Mean of  fBodyBodyGyroJerkMag-mean() readings [units not specified in original data set]
    
fBodyBodyGyroJerkMag-meanFreq()	18
    Mean of  fBodyBodyGyroJerkMag-meanFreq() readings [units not specified in original data set]

# END OF FILE - Thanks for Marking




