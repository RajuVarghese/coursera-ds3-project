## Step 1 of assignment
## ------

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

## Step 2 of assignment
## ------

data <- rawData [, grep("[Mm]ean|[Ss]td|Activity|Subject", names (rawData), value=TRUE)]

## Step 3 of assignment
## ------

activityLabels <- read.delim ("data/activity_labels.txt", header=FALSE, sep="")
data$Activity <- factor(data$Activity, levels = activityLabels [,1], labels = activityLabels [,2])

## Step 4 of assignment
## ------

newNames <- make.names(names (data), unique=TRUE)
newNames <- gsub ("(\\.)", "", newNames)
newNames <- gsub ("mean", "Mean", newNames)
newNames <- gsub ("std", "Std", newNames)
newNames <- gsub ("gravity", "Gravity", newNames)

names (data) <- newNames

## Step 5 of assignment
## ------

# Calculate mean of the measured values
finalData <- data %>%
  group_by (Subject, Activity) %>%
  summarise_each (funs(mean)) %>%
  # Make tidy by converting columns to rows  
  gather (Signal, MeanValue, -Subject, -Activity)

## Step 6 of assignment: Write to disk
## ------

