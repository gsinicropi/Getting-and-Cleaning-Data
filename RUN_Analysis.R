# Getting and cleaning data

### Library
library(downloader)

# Loading
## Download data
zip.FileName <- "Dataset.zip"
if (!file.exists(zip.FileName)) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download(fileUrl, zip.FileName, mode="wb")
  extracted.filename <- unzip(zip.FileName)  
}

# Read Data, Clean Features and use it to Rename Column Name
## Read Features and Labels
if (!exists("features")) {
  features <- read.table("features.txt")  
}  
if (!exists("activity")) {
  activity<- read.table("activity_labels.txt")
}
## Read Train Data
if (!exists("xTrain")) {
  xTrain<- read.table("./train/X_train.txt")
}
if (!exists("yTrain")) {
  yTrain<- read.table("./train/y_train.txt")
}
if (!exists("subjectTrain")) {
  subjectTrain<- read.table("./train/subject_train.txt")
}  
## Read Test Data
if (!exists("xTest")) {
  xTest<- read.table("./test/x_test.txt")
}
if (!exists("yTest")) {
  yTest<- read.table("./test/y_test.txt")
}  
if (!exists("subjectTest")) {
  subjectTest <- read.table("./test/subject_test.txt")
}

## Rename Column Name
names(features) <- c("featuresId","featuresDsc")
names(activity) <- c("activityId","activityDsc")
names(subjectTrain) <- "subjectId"
names(yTrain) <- "activityId"
names(subjectTest) <- "subjectId"
names(yTest) <- "activityId"
## Clean Features Data
features$featuresDsc<-gsub("\\(","",features$featuresDsc) 
features$featuresDsc<-gsub("\\)","",features$featuresDsc) 
features$featuresDsc <- gsub("-","",features$featuresDsc) 
features$featuresDsc<-gsub("\\,","",features$featuresDsc) 
## Use features cleaned data to rename xTrain and xTest data columns
names(xTrain) <- features$featuresDsc
names(xTest) <- features$featuresDsc

# 1. & 2. 
# (1.) Merges the training and the test sets to create one data set with (2.) only the measurements on the mean and standard deviation for each measurement
##Filter Features to have only Means and Standard deviations
featuresMeanStd <- grepl("mean|std", features$featuresDsc, ignore.case=TRUE)
## And use filtered data to limit X dataset
xTrain <- xTrain[,featuresMeanStd]
xTest <- xTest[,featuresMeanStd]
# Merge filtered data
trainData <- cbind(xTrain,yTrain,subjectTrain)  
testData <- cbind(xTest,yTest,subjectTest)    
allData <- rbind(trainData,testData)

## 3. & 4. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive activity names. 
labels <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
allData$activityDsc <- labels[allData$activityId]
allData$activityId <- NULL

## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
## Aggregate data by subjectId and activityDsc with Mean values
tidyDataSet <- aggregate(.~subjectId+activityDsc, allData, mean)    
## Write the Tidy dataset File
write.table(tidyDataSet, file="tidyDataSet.txt", sep = ",")

