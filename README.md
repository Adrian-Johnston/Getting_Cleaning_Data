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

##5. A second, independent tidy data set with the average of each variable for each # activity and each subject.

Line 38
Data is aggregated to show mean of values grouped by activity label/ID and subject ID

Line 39-41 cleanup of ambiguous columns after aggregate grouping

Line 43 
Final data is output in required format.

# CODEBOOK
 



