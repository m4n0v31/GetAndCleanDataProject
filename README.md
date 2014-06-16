# GetAndCleanDataProject

Getting and Cleaning Data Course Project


## Task

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


You should create one R script called run_analysis.R that does the following: 

  1. Merges the training and the test sets to create one data set. 
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set. 
  4. Appropriately labels the data set with descriptive variable names. 
  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!


# The Code Book

This file contains:

* information about the tidy data variables (including units).
* information about the summary choice performed.
* information about the experimental study design (how was data collected).
* an instruction list.

## 1. Tidy data sets

1. Tidy_data.cvs: Tidy data containing the average of each variable (mean or std of the measurements) for each activity and each subject.

## 2. Tidy data variables

* subjectid:  Subject ID of the 30 volunteers.
* activitylabel: Label describing the activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
* features (for convenience dots added, see next subsection for explanation):
```
     "tbodyaccmeanx":            "t.body.acc.mean.x"             
     "tbodyaccmeany":            "t.body.acc.mean.y"             
     "tbodyaccmeanz":            "t.body.acc.mean.z"             
     "tbodyaccstdx":             "t.body.acc.std.x"              
     "tbodyaccstdy":             "t.body.acc.std.y"              
     "tbodyaccstdz":             "t.body.acc.std.z"              
     "tgravityaccmeanx":         "t.gravity.acc.mean.x"          
     "tgravityaccmeany":         "t.gravity.acc.mean.y"          
     "tgravityaccmeanz":         "t.gravity.acc.mean.z"          
     "tgravityaccstdx":          "t.gravity.acc.std.x"           
     "tgravityaccstdy":          "t.gravity.acc.std.y"           
     "tgravityaccstdz":          "t.gravity.acc.std.z"           
     "tbodyaccjerkmeanx":        "t.body.acc.jerk.mean.x"        
     "tbodyaccjerkmeany":        "t.body.acc.jerk.mean.y"        
     "tbodyaccjerkmeanz":        "t.body.acc.jerk.mean.z"        
     "tbodyaccjerkstdx":         "t.body.acc.jerk.std.x"         
     "tbodyaccjerkstdy":         "t.body.acc.jerk.std.y"         
     "tbodyaccjerkstdz":         "t.body.acc.jerk.std.z"         
     "tbodygyromeanx":           "t.body.gyro.mean.x"            
     "tbodygyromeany":           "t.body.gyro.mean.y"            
     "tbodygyromeanz":           "t.body.gyro.mean.z"            
     "tbodygyrostdx":            "t.body.gyro.std.x"             
     "tbodygyrostdy":            "t.body.gyro.std.y"             
     "tbodygyrostdz":            "t.body.gyro.std.z"             
     "tbodygyrojerkmeanx":       "t.body.gyro.jerk.mean.x"       
     "tbodygyrojerkmeany":       "t.body.gyro.jerk.mean.y"       
     "tbodygyrojerkmeanz":       "t.body.gyro.jerk.mean.z"       
     "tbodygyrojerkstdx":        "t.body.gyro.jerk.std.x"        
     "tbodygyrojerkstdy":        "t.body.gyro.jerk.std.y"        
     "tbodygyrojerkstdz":        "t.body.gyro.jerk.std.z"        
     "tbodyaccmagmean":          "t.body.acc.mag.mean"           
     "tbodyaccmagstd":           "t.body.acc.mag.std"            
     "tgravityaccmagmean":       "t.gravity.acc.mag.mean"        
     "tgravityaccmagstd":        "t.gravity.acc.mag.std"         
     "tbodyaccjerkmagmean":      "t.body.acc.jerk.mag.mean"      
     "tbodyaccjerkmagstd":       "t.body.acc.jerk.mag.std"       
     "tbodygyromagmean":         "t.body.gyro.mag.mean"          
     "tbodygyromagstd":          "t.body.gyro.mag.std"           
     "tbodygyrojerkmagmean":     "t.body.gyro.jerk.mag.mean"     
     "tbodygyrojerkmagstd":      "t.body.gyro.jerk.mag.std"      
     "fbodyaccmeanx":            "f.body.acc.mean.x"             
     "fbodyaccmeany":            "f.body.acc.mean.y"             
     "fbodyaccmeanz":            "f.body.acc.mean.z"             
     "fbodyaccstdx":             "f.body.acc.std.x"              
     "fbodyaccstdy":             "f.body.acc.std.y"              
     "fbodyaccstdz":             "f.body.acc.std.z"              
     "fbodyaccjerkmeanx":        "f.body.acc.jerk.mean.x"        
     "fbodyaccjerkmeany":        "f.body.acc.jerk.mean.y"        
     "fbodyaccjerkmeanz":        "f.body.acc.jerk.mean.z"        
     "fbodyaccjerkstdx":         "f.body.acc.jerk.std.x"         
     "fbodyaccjerkstdy":         "f.body.acc.jerk.std.y"         
     "fbodyaccjerkstdz":         "f.body.acc.jerk.std.z"         
     "fbodygyromeanx":           "f.body.gyro.mean.x"            
     "fbodygyromeany":           "f.body.gyro.mean.y"            
     "fbodygyromeanz":           "f.body.gyro.mean.z"            
     "fbodygyrostdx":            "f.body.gyro.std.x"             
     "fbodygyrostdy":            "f.body.gyro.std.y"             
     "fbodygyrostdz":            "f.body.gyro.std.z"             
     "fbodyaccmagmean":          "f.body.acc.mag.mean"           
     "fbodyaccmagstd":           "f.body.acc.mag.std"            
     "fbodybodyaccjerkmagmean":  "f.body.body.acc.jerk.mag.mean" 
     "fbodybodyaccjerkmagstd":   "f.body.body.acc.jerk.mag.std"  
     "fbodybodygyromagmean":     "f.body.body.gyro.mag.mean"     
     "fbodybodygyromagstd":      "f.body.body.gyro.mag.std"      
     "fbodybodygyrojerkmagmean": "f.body.body.gyro.jerk.mag.mean"
     "fbodybodygyrojerkmagstd":  "f.body.body.gyro.jerk.mag.std" 
```

### Variables names clarifications for features
* mean: denotes Mean value
* std: denotes Standard deviation
* prefix 't': denotes time domain signals.
* prefix 'f': denotes frequency domain signals.
* 'mag': denotes magnitude of three-dimensional signals.
* '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## 3. Summary Choices

### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Input Data
Input for the script is the features vector. The raw signals (accelerometer and gyroscope) are not used because already elaborated and accounted when the features vector was created. Used files:

* Train features vector: 'train/X_train.txt': Training set.
* Train labels:          'train/y_train.txt': Training labels.
* Train subjects:        'train/subject_train.txt': Training subjects.
* Test features vector:  'test/X_test.txt':   Test set.
* Test labels:           'test/y_train.txt':  Test labels.
* Test subjects:         'test/subject_train.txt': Test subjects.
* Features:              'features.txt'.
* Activity Labels:       'activity_labels.txt'.


## 4. Study Design
The script performs the following actions (the sourcecode contains comments to identify where these actions are performed):

1. Read activity id and labels
2. Read features id and labels
3. Associates the subject id and activity id to the feature vectors for the training set.
4. Associates the subject id and activity id to the feature vectors for the test set.
5. Merges the two sets (appends test set after training set).
6. Filters the merged set to only extract features based on mean and standard deviation of the measurements.
7. Replaces the activity id with the more descriptive activity labels.
8. Cleans up the names of the features (removes underscores, dots, capital letters, symbols, etc).
9. Averages every feature for each activity type and subject.
10. Stores the tidy data set in a .csv file containing the calculated averages.


## 5. Instruction list
1. Extract the content of "getdata-projectfiles-UCI HAR Dataset.zip" to the folder were the script is located.
2. Load and run the script "run_analysis.R" in R.

