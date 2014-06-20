## Getting and Cleaning Data
### Peer Assessments

# CodeBook

##Data set and transformations 
This data set was obtained from different txt files (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

To obtain a tidy data set, all the downloaded files were loaded and merged togheter to have a full data set with 563 columns and 10229 rows. 
The descriptive names of each activity (instead of numbers) were used to describe the 
activities properly. Then we considered only the variables with mean and 
standard deviation measurements in the names. The number 
of columns became 88. 
Finally an independent tidy data set with the average of each variable for each 
activity and each subject was created. The dimension of the final data set was 88 columns and 
180 rows. 

## Steps to obtain the tidyDataset:

### Loading
* Download data
* Read Data, Clean Features and use it to Rename Column Name
* Read Features and Labels
* Read Train Data
* Read Test Data
* Rename Column Name
* Clean Features Data
* Use features cleaned data to rename xTrain and xTest data columns

### (1) Merges the training and the test sets to create one data set with (2.) only the measurements on the mean and standard deviation for each measurement
* Filter Features to have only Means and Standard deviations
* And use filtered data to limit X dataset
* Merge filtered data
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 

### Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
* Aggregate data by subjectId and activityDsc with Mean values

### Write the Tidy dataset File


## Interpretation of variables
### In the name of variables are always present some of the following character or words:

* X, Y, Z are the axis of X, Y and Z (X, Y and Z are the directions) 
* name that begin with t: time domain signals 
* name that begin with f: frequency domain signals 
* name with "mean": Mean value 
* name with "std": Standard deviation 
* name with "Freq": Weighted average of the frequency components to obtain a mean frequency 
* name with "angle": Angle between to vectors 
* name with "Acc": Acceleration signal from the smartphone accelerometer (sensor signal). 
* name with "Gyr": Angular velocity from the smartphone gyroscope (sensor signal). 
* name with "Body": The signals related to the body of subject (individual) who has been examined. 
* name with "Jerk": Jerk signals (the body linear acceleration and angular velocity were derived in time to reach this signal) 
* name with "Mag": magnitude of the three-dimensional signals calculated using the Euclidean norm 
* name with "Gravity": The signals related to the gravity. 
* subjectId: The numbers between 1 to 30 which are identifiers of the subjects 
(individuals) who carried out the experiment. 
* activitydsc: including 6 activities performed by subjects (STANDING, SITTING, 
LAYING, WALKING, WALKING-DOWNSTAIRS, WALKING-UPSTAIRS) 


### The following are all the fields of tidyDatSet:
subjectId - The numbers between 1 to 30 which are identifiers of the subjects 
(individuals) who carried out the experiment

activityDsc - including 6 activities performed by subjects (STANDING, SITTING, 
LAYING, WALKING, WALKING-DOWNSTAIRS, WALKING-UPSTAIRS)

tBodyAccmeanX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccmeanY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccmeanZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccstdX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccstdY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccstdZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tGravityAccmeanX

tGravityAccmeanY

tGravityAccmeanZ

tGravityAccstdX

tGravityAccstdY

tGravityAccstdZ

tBodyAccJerkmeanX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccJerkmeanY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccJerkmeanZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccJerkstdX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccJerkstdY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccJerkstdZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyGyromeanX - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyromeanY - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyromeanZ - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyrostdX - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyrostdY - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyrostdZ - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroJerkmeanX - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroJerkmeanY - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroJerkmeanZ - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroJerkstdX - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroJerkstdY - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroJerkstdZ - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyAccMagmean - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccMagstd - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tGravityAccMagmean - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tGravityAccMagstd - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccJerkMagmean - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyAccJerkMagstd - The body acceleration signal obtained by subtracting the gravity from the total acceleration

tBodyGyroMagmean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroMagstd - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroJerkMagmean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

tBodyGyroJerkMagstd - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyAccmeanX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccmeanY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccmeanZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccstdX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccstdY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccstdZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccmeanFreqX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccmeanFreqY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccmeanFreqZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkmeanX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkmeanY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkmeanZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkstdX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkstdY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkstdZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkmeanFreqX - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkmeanFreqY - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccJerkmeanFreqZ - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyGyromeanX - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyGyromeanY - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyGyromeanZ - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyGyrostdX - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyGyrostdY - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyGyrostdZ - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyGyromeanFreqX - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyGyromeanFreqY - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyGyromeanFreqZ - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyAccMagmean - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccMagstd - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyAccMagmeanFreq - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyBodyAccJerkMagmean - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyBodyAccJerkMagstd - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyBodyAccJerkMagmeanFreq - The body acceleration signal obtained by subtracting the gravity from the total acceleration

fBodyBodyGyroMagmean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyBodyGyroMagstd - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyBodyGyroMagmeanFreq - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyBodyGyroJerkMagmean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyBodyGyroJerkMagstd - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

fBodyBodyGyroJerkMagmeanFreq - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

angletBodyAccMeangravity

angletBodyAccJerkMeangravityMean

angletBodyGyroMeangravityMean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

angletBodyGyroJerkMeangravityMean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

angleXgravityMean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

angleYgravityMean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

angleZgravityMean - The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second

