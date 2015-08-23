Activity Selection 
=================
Activity, character class variable. 
There are 6 types of activity:
1.WALKING,
2.WALKING_UPSTAIRS,
3.WALKING_DOWNSTAIRS,
4.SITTING,
5.STANDING,
6.LAYING

Subject_id Selection 
=================
Subject_id,int class variable. 
There are 30 subjects in this experiment.
So their id numbers are 1, 2,…, 30.

Features Selection 
=================
features, character class variable.
There are 66 types of features which have something to do with the mean and standard deviation for each signal measurement.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
There are 20 time domain signals: (Note the 't' to indicate time domain signals).
tBodyAcc-X/Y/Z
tGravityAcc-X/Y/Z
tBodyAccJerk-X/Y/Z
tBodyGyro-X/Y/Z
tBodyGyroJerk-X/Y/Z
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag

And there are 13 frequency domain signals: (Note the 'f' to indicate frequency domain signals).
fBodyAcc-X/Y/Z
fBodyAccJerk-X/Y/Z
fBodyGyro-X/Y/Z
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Using mean() and std() to compute the mean value and standard deviation of these 33 signals, we get 66 variables which are also called 66 types of features in the tidy dataset.

Here is the list:

*  tBodyAcc_mean_X :	 It is a time domain feature. 

*  tBodyAcc_mean_Y :	 It is a time domain feature. 

*  tBodyAcc_mean_Z :	 It is a time domain feature. 

*  tGravityAcc_mean_X :	 It is a time domain feature. 

*  tGravityAcc_mean_Y :	 It is a time domain feature. 

*  tGravityAcc_mean_Z :	 It is a time domain feature. 

*  tBodyAccJerk_mean_X :	 It is a time domain feature. 

*  tBodyAccJerk_mean_Y :	 It is a time domain feature. 

*  tBodyAccJerk_mean_Z :	 It is a time domain feature. 

*  tBodyGyro_mean_X :	 It is a time domain feature. 

*  tBodyGyro_mean_Y :	 It is a time domain feature. 

*  tBodyGyro_mean_Z :	 It is a time domain feature. 

*  tBodyGyroJerk_mean_X :	 It is a time domain feature. 

*  tBodyGyroJerk_mean_Y :	 It is a time domain feature. 

*  tBodyGyroJerk_mean_Z :	 It is a time domain feature. 

*  tBodyAccMag_mean :	 It is a time domain feature. 

*  tGravityAccMag_mean :	 It is a time domain feature. 

*  tBodyAccJerkMag_mean :	 It is a time domain feature. 

*  tBodyGyroMag_mean :	 It is a time domain feature. 

*  tBodyGyroJerkMag_mean :	 It is a time domain feature. 

*  fBodyAcc_mean_X :	 It is a frequency domain feature. 

*  fBodyAcc_mean_Y :	 It is a frequency domain feature. 

*  fBodyAcc_mean_Z :	 It is a frequency domain feature. 

*  fBodyAccJerk_mean_X :	 It is a frequency domain feature. 

*  fBodyAccJerk_mean_Y :	 It is a frequency domain feature. 

*  fBodyAccJerk_mean_Z :	 It is a frequency domain feature. 

*  fBodyGyro_mean_X :	 It is a frequency domain feature. 

*  fBodyGyro_mean_Y :	 It is a frequency domain feature. 

*  fBodyGyro_mean_Z :	 It is a frequency domain feature. 

*  fBodyAccMag_mean :	 It is a frequency domain feature. 

*  fBodyBodyAccJerkMag_mean :	 It is a frequency domain feature. 

*  fBodyBodyGyroMag_mean :	 It is a frequency domain feature. 

*  fBodyBodyGyroJerkMag_mean :	 It is a frequency domain feature. 

*  tBodyAcc_std_X :	 It is a time domain feature. 

*  tBodyAcc_std_Y :	 It is a time domain feature. 

*  tBodyAcc_std_Z :	 It is a time domain feature. 

*  tGravityAcc_std_X :	 It is a time domain feature. 

*  tGravityAcc_std_Y :	 It is a time domain feature. 

*  tGravityAcc_std_Z :	 It is a time domain feature. 

*  tBodyAccJerk_std_X :	 It is a time domain feature. 

*  tBodyAccJerk_std_Y :	 It is a time domain feature. 

*  tBodyAccJerk_std_Z :	 It is a time domain feature. 

*  tBodyGyro_std_X :	 It is a time domain feature. 

*  tBodyGyro_std_Y :	 It is a time domain feature. 

*  tBodyGyro_std_Z :	 It is a time domain feature. 

*  tBodyGyroJerk_std_X :	 It is a time domain feature. 

*  tBodyGyroJerk_std_Y :	 It is a time domain feature. 

*  tBodyGyroJerk_std_Z :	 It is a time domain feature. 

*  tBodyAccMag_std :	 It is a time domain feature. 

*  tGravityAccMag_std :	 It is a time domain feature. 

*  tBodyAccJerkMag_std :	 It is a time domain feature. 

*  tBodyGyroMag_std :	 It is a time domain feature. 

*  tBodyGyroJerkMag_std :	 It is a time domain feature. 

*  fBodyAcc_std_X :	 It is a frequency domain feature. 

*  fBodyAcc_std_Y :	 It is a frequency domain feature. 

*  fBodyAcc_std_Z :	 It is a frequency domain feature. 

*  fBodyAccJerk_std_X :	 It is a frequency domain feature. 

*  fBodyAccJerk_std_Y :	 It is a frequency domain feature. 

*  fBodyAccJerk_std_Z :	 It is a frequency domain feature. 

*  fBodyGyro_std_X :	 It is a frequency domain feature. 

*  fBodyGyro_std_Y :	 It is a frequency domain feature. 

*  fBodyGyro_std_Z :	 It is a frequency domain feature. 

*  fBodyAccMag_std :	 It is a frequency domain feature. 

*  fBodyBodyAccJerkMag_std :	 It is a frequency domain feature. 

*  fBodyBodyGyroMag_std :	 It is a frequency domain feature. 

*  fBodyBodyGyroJerkMag_std :	 It is a frequency domain feature. 

