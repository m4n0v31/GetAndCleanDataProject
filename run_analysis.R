run_analysis <- function() {
    root <- "getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset"
    
    ## 1. Read Activity id and labels
    path <- c(root, "activity_labels.txt")
    path <- paste(path, collapse = "/")
    activities_dict <- read.table(path, col.names = c("activityid",
                                                      "activitylabels"))
    
    ## 2. Read Features Vector Labels
    path <- c(root, "features.txt")
    path <- paste(path, collapse = "/")
    features_dict <- read.table(path, col.names = c("featuresid",
                                                      "featureslabels"))
    
    ## 3., 4., and 5.
    # Read Training and Test data
    # "X_Train.txt", "y_train.txt" and "subject_train.txt"
    # Data in "Inertial Signals" is not used (was already used to create the 3
    # files mentioned above [see "feature_info.txt"])
    data <- NULL
    subfolders <- c("train", "test")
    for (folder in subfolders) {
       ## Subjects
        path <- c(root, folder, paste("subject_", folder, ".txt", sep = ""))
        path <- paste(path, collapse = "/")
        subject <- read.table(path, col.names = c("subjectid"))
        ## Activities
        path <- c(root, folder, paste("y_", folder, ".txt", sep = ""))
        path <- paste(path, collapse = "/")
        activities <- read.table(path, col.names = c("activityid"))
        ## Features
        path <- c(root, folder, paste("X_", folder, ".txt", sep = ""))
        path <- paste(path, collapse = "/")
        features <- read.table(path, col.names = features_dict$featureslabels)    
        data <- rbind(data, cbind(subject, activities, features))
    } 
    
    ## 6.
    # Extracts only the measurements on the mean and standard deviation for
    # each measurement. 
    data <- data[grep("(subjectid)|(activity)|(std)|(mean[^F])", 
                      colnames(data))]
    
    ## 7.
    # Replace activityid with descriptive activity names
    data$activityid <- factor(data$activityid, 
                               labels = activities_dict$activitylabels)
    colnames(data)[grep("activityid", colnames(data))] <- "activitylabel"
        
    ## 8.
    # Appropriately labels the data set with descriptive variable names.
    colnames(data) <- tolower(gsub("([A-Z])", "\\.\\1", colnames(data)))
    colnames(data) <- gsub("\\.$", "", gsub("(\\.+)", "", colnames(data)))    
    
    ## 9. and 10.
    # Creates a second, independent tidy data set with the average of each 
    # variable for each activity and each subject.
    data2 <- aggregate( . ~ subjectid+activitylabel , data, mean )
    write.csv2(data2, file = "Tidy_data.csv")
    
}