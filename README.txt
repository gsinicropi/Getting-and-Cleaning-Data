==================================================================
Human Activity Recognition Using Smartphones Dataset
==================================================================
The dataset includes the following files:
a .R file (R script) named on run_Analysis.R a .MD file  named on CodeBook.md and this Readme file 

The R script (run_Analysis.R) encompasses all the codes to obtain the tidy Dataset

the CodeBook.md explain how to interpret each variable.
==================================================================
Data

Data set and transformations 
This data set was obtained from different txt files (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

To obtain a tidy data set, all the downloaded files were loaded and merged togheter to have a full data set with 563 columns and 10229 rows. 
The descriptive names of each activity (instead of numbers) were used to describe the 
activities properly. Then we considered only the variables with mean and 
standard deviation measurements in the names. The number 
of columns became 88. 
Finally an independent tidy data set with the average of each variable for each 
activity and each subject was created. The dimension of the final data set was 88 columns and 
180 rows. 

Steps to obtain the tidyDataset:

Loading
* Download data
* Read Data, Clean Features and use it to Rename Column Name
* Read Features and Labels
* Read Train Data
* Read Test Data
* Rename Column Name
* Clean Features Data
* Use features cleaned data to rename xTrain and xTest data columns

(1) Merges the training and the test sets to create one data set with (2.) only the measurements on the mean and standard deviation for each measurement
* Filter Features to have only Means and Standard deviations
* And use filtered data to limit X dataset
* Merge filtered data
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 

Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
* Aggregate data by subjectId and activityDsc with Mean values

Write the Tidy dataset File


