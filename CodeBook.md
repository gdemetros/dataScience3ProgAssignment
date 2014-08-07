                     Data Dictionary - Getting and Cleaning Data Course Project
                Average Mean and Standard Deviation measurements per subject and activity

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Started project with: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Derived data in this data set by doing the following:
   1. Merged the training and the test sets to create one data set.
   2. Extracted only the measurements on the mean and standard deviation for each measurement.
   3. Used descriptive activity names to name the activities in the data set
   4. Appropriately labeled the data set with descriptive variable names. 
      - Converted the original measurement labels by expanding:
        "t" to "timeDomain"
        "f" to "frequencyDomain"
        "acc" to "Acceleration"
      - Ran make.names to make labels more "R" friendly, i.e. removed "(", ")", ","
   5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
      - The file that contains the tidy data set is: avgMeanAndStd.txt
      - Changed the labels in avgMeanAndStd data set to prepend AvgOf_ to all the measurement lables (fields 3-88 below)

Column numbers and labels with description for avgMeanAndStd data set 
Column 1 is theSubjects # 1-30 volunteers Age 19-48
Column 2 is theActivity # 6 activities
  - WALKING
  - WALKING_UPSTAIRS
  - WALKING_DOWNSTAIRS
  - SITTING
  - STANDING
  - LAYING
Columns 3-88 below indicate the measurements for avg time and frequency domain variables for mean and standard deviations

1 theSubject # 1-30 volunteers Age 19-48
2 theActivity # 6 activities
3 AvgOf_timeDomainBodyAcceleration.mean...X
4 AvgOf_timeDomainBodyAcceleration.mean...Y
5 AvgOf_timeDomainBodyAcceleration.mean...Z
6 AvgOf_timeDomainBodyAcceleration.std...X
7 AvgOf_timeDomainBodyAcceleration.std...Y
8 AvgOf_timeDomainBodyAcceleration.std...Z
9 AvgOf_timeDomainGravityAcceleration.mean...X
10 AvgOf_timeDomainGravityAcceleration.mean...Y
11 AvgOf_timeDomainGravityAcceleration.mean...Z
12 AvgOf_timeDomainGravityAcceleration.std...X
13 AvgOf_timeDomainGravityAcceleration.std...Y
14 AvgOf_timeDomainGravityAcceleration.std...Z
15 AvgOf_timeDomainBodyAccelerationJerk.mean...X
16 AvgOf_timeDomainBodyAccelerationJerk.mean...Y
17 AvgOf_timeDomainBodyAccelerationJerk.mean...Z
18 AvgOf_timeDomainBodyAccelerationJerk.std...X
19 AvgOf_timeDomainBodyAccelerationJerk.std...Y
20 AvgOf_timeDomainBodyAccelerationJerk.std...Z
21 AvgOf_timeDomainBodyGyro.mean...X
22 AvgOf_timeDomainBodyGyro.mean...Y
23 AvgOf_timeDomainBodyGyro.mean...Z
24 AvgOf_timeDomainBodyGyro.std...X
25 AvgOf_timeDomainBodyGyro.std...Y
26 AvgOf_timeDomainBodyGyro.std...Z
27 AvgOf_timeDomainBodyGyroJerk.mean...X
28 AvgOf_timeDomainBodyGyroJerk.mean...Y
29 AvgOf_timeDomainBodyGyroJerk.mean...Z
30 AvgOf_timeDomainBodyGyroJerk.std...X
31 AvgOf_timeDomainBodyGyroJerk.std...Y
32 AvgOf_timeDomainBodyGyroJerk.std...Z
33 AvgOf_timeDomainBodyAccelerationMag.mean..
34 AvgOf_timeDomainBodyAccelerationMag.std..
35 AvgOf_timeDomainGravityAccelerationMag.mean..
36 AvgOf_timeDomainGravityAccelerationMag.std..
37 AvgOf_timeDomainBodyAccelerationJerkMag.mean..
38 AvgOf_timeDomainBodyAccelerationJerkMag.std..
39 AvgOf_timeDomainBodyGyroMag.mean..
40 AvgOf_timeDomainBodyGyroMag.std..
41 AvgOf_timeDomainBodyGyroJerkMag.mean..
42 AvgOf_timeDomainBodyGyroJerkMag.std..
43 AvgOf_frequencyDomainBodyAcceleration.mean...X
44 AvgOf_frequencyDomainBodyAcceleration.mean...Y
45 AvgOf_frequencyDomainBodyAcceleration.mean...Z
46 AvgOf_frequencyDomainBodyAcceleration.std...X
47 AvgOf_frequencyDomainBodyAcceleration.std...Y
48 AvgOf_frequencyDomainBodyAcceleration.std...Z
49 AvgOf_frequencyDomainBodyAcceleration.meanFreq...X
50 AvgOf_frequencyDomainBodyAcceleration.meanFreq...Y
51 AvgOf_frequencyDomainBodyAcceleration.meanFreq...Z
52 AvgOf_frequencyDomainBodyAccelerationJerk.mean...X
53 AvgOf_frequencyDomainBodyAccelerationJerk.mean...Y
54 AvgOf_frequencyDomainBodyAccelerationJerk.mean...Z
55 AvgOf_frequencyDomainBodyAccelerationJerk.std...X
56 AvgOf_frequencyDomainBodyAccelerationJerk.std...Y
57 AvgOf_frequencyDomainBodyAccelerationJerk.std...Z
58 AvgOf_frequencyDomainBodyAccelerationJerk.meanFreq...X
59 AvgOf_frequencyDomainBodyAccelerationJerk.meanFreq...Y
60 AvgOf_frequencyDomainBodyAccelerationJerk.meanFreq...Z
61 AvgOf_frequencyDomainBodyGyro.mean...X
62 AvgOf_frequencyDomainBodyGyro.mean...Y
63 AvgOf_frequencyDomainBodyGyro.mean...Z
64 AvgOf_frequencyDomainBodyGyro.std...X
65 AvgOf_frequencyDomainBodyGyro.std...Y
66 AvgOf_frequencyDomainBodyGyro.std...Z
67 AvgOf_frequencyDomainBodyGyro.meanFreq...X
68 AvgOf_frequencyDomainBodyGyro.meanFreq...Y
69 AvgOf_frequencyDomainBodyGyro.meanFreq...Z
70 AvgOf_frequencyDomainBodyAccelerationMag.mean..
71 AvgOf_frequencyDomainBodyAccelerationMag.std..
72 AvgOf_frequencyDomainBodyAccelerationMag.meanFreq..
73 AvgOf_frequencyDomainBodyBodyAccelerationJerkMag.mean..
74 AvgOf_frequencyDomainBodyBodyAccelerationJerkMag.std..
75 AvgOf_frequencyDomainBodyBodyAccelerationJerkMag.meanFreq..
76 AvgOf_frequencyDomainBodyBodyGyroMag.mean..
77 AvgOf_frequencyDomainBodyBodyGyroMag.std..
78 AvgOf_frequencyDomainBodyBodyGyroMag.meanFreq..
79 AvgOf_frequencyDomainBodyBodyGyroJerkMag.mean..
80 AvgOf_frequencyDomainBodyBodyGyroJerkMag.std..
81 AvgOf_frequencyDomainBodyBodyGyroJerkMag.meanFreq..
82 AvgOf_angle.timeDomainBodyAccelerationMean.gravity.
83 AvgOf_angle.timeDomainBodyAccelerationJerkMean..gravityMean.
84 AvgOf_angle.timeDomainBodyGyroMean.gravityMean.
85 AvgOf_angle.timeDomainBodyGyroJerkMean.gravityMean.
86 AvgOf_angle.X.gravityMean.
87 AvgOf_angle.Y.gravityMean.
88 AvgOf_angle.Z.gravityMean.
