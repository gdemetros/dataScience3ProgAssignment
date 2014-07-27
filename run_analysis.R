                          Getting and Cleaning Data Course Project

Script created: run_analysis.R

Assumption before running script is that the Project data set has been downloaded and unzipped to the R working directory
The script (run_analysis function) does the following:
   1. Merges the training and the test sets to create one data set.
   2. Extracts only the measurements on the mean and standard deviation for each measurement.
   3. Uses descriptive activity names to name the activities in the data set
   4. Appropriately labels the data set with descriptive variable names. 
      - Converts the original measurement labels by expanding:
        "t" to "timeDomain"
        "f" to "frequencyDomain"
        "acc" to "Acceleration"
      - Runs make.names to make labels more "R" friendly, i.e. removed "(", ")", ","
   5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
      - This dataset is created as avgMeanAndStd
      - Changes the labels in avgMeanAndStd data set to prepend AvgOf_ to all the measurement lables
      - Writes a file that contains the tidy data set: avgMeanAndStd.txt
      - Writes a file called CodeBook.md with the column names of the avgMeanAndStd data set to be used as starting
        point for the codebook
                         