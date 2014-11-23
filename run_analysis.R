## Project of Coursera Data Science #3: Getting and Cleaning Data
## Raju Varghese 2014-11-23

## Step 1 of project
## ------
##   "Merges the training and the test sets to create one data set."
##   Used the helpful information from David Hood (TA) to combine
##   the files in the diagram https://class.coursera.org/getdata-009/forum/thread?thread_id=58#comment-369
##

# read X_train
x_train <- read.csv("data/train/X_train.txt", header=FALSE, sep="")
# get column headers for X_train & X_test
headers <- read.delim (file="data/features.txt", header=FALSE, sep="")
colHeaders <- headers [,2]
names(x_train) <- colHeaders
# read subject_train.txt and give it a column header
subject_train <- read.delim (file="data/train/subject_train.txt", header=FALSE, sep="")
names(subject_train) <- c("Subject")
# read y_train.txt and give it a column header
y_train <- read.delim (file="data/train/y_train.txt", header=FALSE, sep="")
names(y_train) <- c("Activity")
# combine the 3 training tables into one
train<-cbind (subject_train, y_train, x_train)

# read X_test
x_test <- read.csv("data/test/X_test.txt", header=FALSE, sep="")
# set column headers for X_test
names(x_test) <- colHeaders
# read subject_test.txt and give it a column header
subject_test <- read.delim (file="data/test/subject_test.txt", header=FALSE, sep="")
names(subject_test) <- c("Subject")
# read y_test.txt and give it a column header
y_test <- read.delim (file="data/test/y_test.txt", header=FALSE, sep="")
names(y_test) <- c("Activity")
# combine the 3 test tables into one
test<-cbind (subject_test, y_test, x_test)

rawData <- rbind(train, test)

## Step 2 of project
## ------
##   "Extracts only the measurements on the mean and standard deviation for each measurement."
##   All the measurements that have the words "mean" and "std" (Standard Deviation)
##   in addtiion to Activity and Subject are used and the rest are discarded.

data <- rawData [, grep("[Mm]ean|[Ss]td|Activity|Subject", names (rawData), value=TRUE)]

## Step 3 of project
## ------
##   "Uses descriptive activity names to name the activities in the data set"
##   The descriptive activity names are in the file activity_labels.txt

activityLabels <- read.delim ("data/activity_labels.txt", header=FALSE, sep="")
data$Activity <- factor(data$Activity, levels = activityLabels [,1], labels = activityLabels [,2])

## Step 4 of project
## ------
##   "Appropriately labels the data set with descriptive variable names."
##   Clean the labels. Remove punctuation characters, expand some abbreviations.

newNames <- make.names(names (data), unique=TRUE)
newNames <- gsub ("(\\.)", "", newNames)
newNames <- gsub ("mean", "Mean", newNames)
newNames <- gsub ("std", "Std", newNames)
newNames <- gsub ("gravity", "Gravity", newNames)

names (data) <- newNames

## Step 5 of project
## ------
##   "From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."
##   This is the hardest of the steps.

library (dplyr)
library (tidyr)

# Calculate mean of the measured values
finalData <- data %>%
  group_by (Subject, Activity) %>%
  summarise_each (funs(mean)) %>%
  # Make tidy by converting columns to rows  
  gather (Signal, MeanValue, -Subject, -Activity)

## Step 6 of project: Write to disk
## ------
##   "upload the tidy data set created in step 5 of the instructions"

write.table (finalData, "tidyData.txt", row.name=FALSE)
