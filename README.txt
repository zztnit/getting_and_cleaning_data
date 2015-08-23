==================================================================
Course Project of Coursera Class: Getting and Cleaning Data
Version 1.0
==================================================================
Zhentao Zhu
==================================================================

This project does the following: 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

You can download the tidydata.txt and read it into R using read.table function:
>df <- read.table( path_file, header = TRUE, stringsAsFactors = FALSE)
Here, path_file is the path and filename that the downloaded file lies in your computer.

For each record of the tidy data it is provided:
======================================
- activity, character class, there are 6 types of activity:1)WALKING,2)WALKING_UPSTAIRS,3)WALKING_DOWNSTAIRS,4)SITTING,5)STANDING,6)LAYING

- subject_id,int class, there are 30 subjects in this experiment. 

- features, character class, it contains measurements on the mean and standard deviation for each measurement.  

- average_value, numeric class, the average value of each feature variable.

See 'codebook.md' for more details.

Two things I have to explain:
======================================

Q. Why other variables whose name have "mean/std" pattern are not included? 
A: I can find all the variables whose name have "mean" pattern using this:
> idx1 <- grep("mean", features_vector, ignore.case = TRUE)
However, I think mean() is the right function the guidance ask us to use.
Although meanFreq() is to  compute a mean frequency, but its algorithm is not the same as mean(). It is weighted average of the frequency components.


Q. Why the tidy data set is narrow and long form?
A: Because features are normalized and bounded within [-1,1] and without unit.

The repo includes the following files:
=========================================

- 'README.txt'

- 'run_analysis.R': R script file which get and clean the raw data according to the guidance of the class instructor.

- 'codebook.md': it describes the variables, the data, and any transformations or work that I performed to clean up the data.

- 'tidydata.txt': tidy data that can be used for later analysis.

Notes: 
======
- Features are normalized and bounded within [-1,1]. So these features can be gathered into key-value pairs.

- A full description of the raw data and the experiment is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 