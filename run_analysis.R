dataDir <- "data"

# Extract the data exactly once to a dir called 'data':
if (!dir.exists(dataDir)) {
  zipName <- "getdata-projectfiles-UCI HAR Dataset.zip"
  if (!file.exists(zipName)) {
    stop(paste("Could not find file ", zipName))
  }
  unzip(zipName)
  file.rename("UCI HAR Dataset", dataDir)
}

# Fetch the 6 (id, name) pairs for the activity labels:
activityLabels <- read.table(paste(dataDir, "activity_labels.txt", sep="/"))
names(activityLabels) <- c("activity.id", "activity.name")

# Fetch the 561 (id, name) pairs for the features:
features <- read.table(paste(dataDir, "features.txt", sep="/"))
names(features) <- c("feature.id", "feature.name")

testDir <- paste(dataDir, "test", sep="/")

# Fetch the test subjects (2947 rows with IDs):
testSubjects <- read.table(paste(testDir, "subject_test.txt", sep="/"))

# Fetch the test sets (2947 rows, 561 columns):
testSets <- read.table(paste(testDir, "X_test.txt", sep="/"))

# Fetch the test labels (2947 rows with IDs):
testLabels <- read.table(paste(testDir, "y_test.txt", sep="/"))

trainDir <- paste(dataDir, "train", sep="/")

# Fetch the training subjects (7352 rows with IDs):
trainSubjects <- read.table(paste(trainDir, "subject_train.txt", sep="/"))

# Fetch the training sets (7532 rows, 561 columns):
trainSets <- read.table(paste(trainDir, "X_train.txt", sep="/"))

# Fetch the training labels (7352 rows with IDs):
trainLabels <- read.table(paste(trainDir, "y_train.txt", sep="/"))

# Merge the test and training data:
allSets <- rbind(testSets, trainSets) # Column names for this one will be set later on
allSubjects <- rbind(testSubjects, trainSubjects)
names(allSubjects) <- "subject.id"
allLabels <- rbind(testLabels, trainLabels)
names(allLabels) <- "activity.id"

# Assign the features as the column names for the sets:
featureNames <- make.names(features[,"feature.name"]) # Convert to valid column names
featureNames <- gsub("\\.+", ".", featureNames) # Collapse multiple dots
featureNames <- gsub("\\.$", "", featureNames) # Remove dot at end of column name
names(allSets) <- featureNames

# Select only the columns that relate to mean or standard deviation
# (look for 'mean' or 'std' (case insensitive) in the column name):
tidySets <- allSets[,grep("mean|std", names(allSets), ignore.case=TRUE)]

# Add the activities to the sets:
activityNames <- as.data.frame(activityLabels[allLabels$activity.id, "activity.name"])
names(activityNames) <- "activity.name"
tidySets <- cbind(activityNames, tidySets)

# Add the subjects to the sets:
tidySets <- cbind(allSubjects, tidySets)

# Create dataset with averages of each variable per measurement/subject
aggSets <- aggregate(tidySets[,3:ncol(tidySets)], list(tidySets$subject.id, tidySets$activity.name), mean)
colnames(aggSets)[1:2] <- c("subject.id", "activity.name")
result <- aggSets[with(aggSets, order(aggSets$subject.id, aggSets$activity.name)),]

# Write the sets to file:
outputFileName <- "tidy_data.txt"
write.table(result, file=outputFileName, row.names=FALSE)
print(paste("Done! Output written to", outputFileName))
