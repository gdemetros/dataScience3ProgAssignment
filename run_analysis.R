run_analysis <- function() {
  setwd("C:/Users/IBM_ADMIN/Documents/coursera/class3Proj")

  ## subjectTest is a vector of integers, where each integer corresponds to
  ## a subject
  subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")

  ##
  theXTest <- read.table("UCI HAR Dataset/test/X_test.txt")
 
  ##
  yTest <- read.table("UCI HAR Dataset/test/y_test.txt")
 
  ## 
  subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

  ##
  theXTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
 
  ##
  yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")

  ##
  activities <- read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)

  ##
  features <- read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

  ## name the subjectTest dataset
  colnames(subjectTest) <- c("theSubject")

  ## name the subjectTrain dataset
  colnames(subjectTrain) <- c("theSubject")

  ## name theXTest and theXTrain columns with the features from 
  ## features dataset
  for( i in features[,1]) {
     featureText <- features[i,2]
     featureText <- gsub("tBody","timeDomainBody",featureText)
     featureText <- gsub("fBody","frequencyDomainBody",featureText)
     featureText <- gsub("Acc","Acceleration",featureText)
     featureText <- gsub("tGravity","timeDomainGravity",featureText)
     featureText <- make.names(featureText)
     colnames(theXTest)[i] <- featureText
     colnames(theXTrain)[i] <- featureText
  }
 
  ## add column name to both yTest and yTrain datasets
  colnames(yTest) <- c("theActivity")
  colnames(yTrain) <- c("theActivity")

  ## name yTest values in column 1 with the matching activities
  ## from activities dataset
  for( i in 1:length(yTest[,1])) {
     activityValue <- yTest[i,1]
     activityText <- activities[match(activityValue,activities$V1),2]
     yTest[i,1] <- activityText
  }

  ## name yTrain values in column 1 with the matching activities
  ## from activities dataset
  for( i in 1:length(yTrain[,1])) {
     activityValue <- yTrain[i,1]
     activityText <- activities[match(activityValue,activities$V1),2]
     yTrain[i,1] <- activityText
  }

  yXTestCombine <- cbind(yTest,theXTest)
  subjectYXTest <- cbind(subjectTest,yXTestCombine)
  yXTrainCombine <- cbind(yTrain,theXTrain)
  subjectYXTrain <- cbind(subjectTrain,yXTrainCombine)

  mergedTestAndTrain <- rbind(subjectYXTest,subjectYXTrain)
  
  ## extract mean and std measurements into a separate data set
  mergeColNames <- colnames(mergedTestAndTrain)
  colNameLength <- length(mergeColNames)
  meanAndStd <- mergedTestAndTrain[,1:2]
  cnt <- 3
  for( i in 3:colNameLength) {
    if(grepl("mean",mergeColNames[i],ignore.case=TRUE) | grepl("std",mergeColNames[i],ignore.case=TRUE)) {
       meanAndStd <- cbind(meanAndStd, mergedTestAndTrain[,i])
       theName <- mergeColNames[i]
       colnames(meanAndStd)[cnt] <- theName
       cnt <- cnt + 1
    }
  }

  avgMeanAndStd <- aggregate(. ~ theSubject + theActivity, data=meanAndStd, FUN=mean)
  tidyNames <- colnames(avgMeanAndStd)
  colNameLength <- length(tidyNames)
  cnt <- 3
  for( i in 3:colNameLength) {
     theName <- tidyNames[i]
     colnames(avgMeanAndStd)[cnt] <- paste("AvgOf_",theName,sep = "")
     cnt <- cnt + 1
  }
  write.table(avgMeanAndStd, "avgMeanAndStd.txt",row.names = FALSE) 

  tidyNames <- colnames(avgMeanAndStd)

  # write out file to be used for code book creation
  write.table(tidyNames, "theCodeBook.txt")
}