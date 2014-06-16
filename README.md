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

1. filename.cvs: Tidy data containing mean and standard deviation of the measurements
2. filename2.cvs: Tidy data containing the average of each variable for each activity and each subject.

## 2. Tidy data variables

[List Variables]

### Variables names clarifications
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


## 4. Study Design

## 5. Instruction list

