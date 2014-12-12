
combine the data of train/X\_train.txt and test/X\_test.txt
ant set the column names by features.txt .
combine train/y\_train.txt and test/y\_test.txt
add the data to dataset with column activity .
combine train/subject\_train.txt and test/subject\_test.txt
add to dataset with column subject .

extract the column which has \_mean() and \_std() and the
column activity and subject .

replace activity's integer by the labels of activity\_labels.txt

remove the column names '()' character and replace '\_' by '.' .

group by activity and subject and calculate the average of each
column .

- - -

#### tBodyAcc.mean.X tBodyAcc.mean.Y tBodyAcc.mean.Z

the average by activity and subject of
the mean of body acceleration signals 
come from the accelerometer 3-axial raw signals captured 
at a constant rate of 50 Hz, then filtered using a median
filter and a 3rd order low pass Butterworth filter with 
a corner frequency of 20 Hz to remove noise, separated
into body acceleration signals using low pass Butterworth
filter with a corner frequency of 0.3 Hz.
the standard deviation of body acceleration signals 

#### tBodyAcc.std.X tBodyAcc.std.Y tBodyAcc.std.Z

same as tBodyAcc.mean.[XYZ] but is the standard deviation

#### tGravityAcc.mean.X tGravityAcc.mean.Y tGravityAcc.mean.Z

the average by activity and subject of
the mean of gravity acceleration signals 
come from the accelerometer 3-axial raw signals captured 
at a constant rate of 50 Hz, then filtered using a median
filter and a 3rd order low pass Butterworth filter with 
a corner frequency of 20 Hz to remove noise, separated
into gravity acceleration signals using low pass Butterworth
filter with a corner frequency of 0.3 Hz.
the standard deviation of body acceleration signals 

#### tGravityAcc.std.X tGravityAcc.std.Y tGravityAcc.std.Z

same as tGravityAcc.mean.[XYZ] but is the standard deviation

#### tBodyAccJerk.mean.X tBodyAccJerk.mean.Y tBodyAccJerk.mean.Z

the average by activity and subject of
the mean of tBodyAcc.[XYZ] derived in time to obtain Jerk signals

#### tBodyAccJerk.std.X tBodyAccJerk.std.Y tBodyAccJerk.std.Z

same as tBodyAccJerk.mean.[XYZ] but is the standard deviation

#### tBodyGyro.mean.X tBodyGyro.mean.Y tBodyGyro.mean.Z

the average by activity and subject of
the mean of body gyroscope signals 
come from the gyroscope 3-axial raw signals captured 
at a constant rate of 50 Hz, then filtered using a median
filter and a 3rd order low pass Butterworth filter with 
a corner frequency of 20 Hz to remove noise

#### tBodyGyro.std.X tBodyGyro.std.Y tBodyGyro.std.Z

same as tBodyGyro.mean.[XYZ] but is the standard deviation

#### tBodyGyroJerk.mean.X tBodyGyroJerk.mean.Y tBodyGyroJerk.mean.Z

the average by activity and subject of
the mean of tBodyGyro.[XYZ] derived in time to obtain Jerk signals

#### tBodyGyroJerk.std.X tBodyGyroJerk.std.Y tBodyGyroJerk.std.Z

same as tBodyGyroJerk.mean.[XYZ] but is the standard deviation

#### tBodyAccMag.mean

the average by activity and subject of
the mean of the magnitude of these three-dimensional signals 
of tBodyAcc.[XYZ] calculated using the Euclidean norm 

#### tBodyAccMag.std

same as tBodyAccMag.mean but is the standard deviation

#### tGravityAccMag.mean

the average by activity and subject of
the mean of the magnitude of these three-dimensional signals 
of tGravityAcc.[XYZ] calculated using the Euclidean norm 

#### tGravityAccMag.std

same as tGravityAccMag.mean but is the standard deviation

#### tBodyAccJerkMag.mean

the average by activity and subject of
the mean of the magnitude of these three-dimensional signals 
of tBodyAccJerk.[XYZ] calculated using the Euclidean norm 

#### tBodyAccJerkMag.std

same as tBodyAccJerkMag.mean but is the standard deviation

#### tBodyGyroMag.mean

the average by activity and subject of
the mean of the magnitude of these three-dimensional signals 
of tBodyGyro.[XYZ] calculated using the Euclidean norm 

#### tBodyGyroMag.std

same as tBodyGyroMag.mean but is the standard deviation

#### tBodyGyroJerkMag.mean

the average by activity and subject of
the mean of the magnitude of these three-dimensional signals 
of tBodyGyroJerk.[XYZ] calculated using the Euclidean norm 

#### tBodyGyroJerkMag.std

same as tBodyGyroJerkMag.mean but is the standard deviation

#### fBodyAcc.mean.X fBodyAcc.mean.Y fBodyAcc.mean.Z

the average by activity and subject of
the mean of Fast Fourier Transform (FFT) applied to tBodyAcc.[XYZ]

#### fBodyAcc.std.X fBodyAcc.std.Y fBodyAcc.std.Z

same as fBodyAcc.mean.[XYZ] but is the standard deviation

#### fBodyAccJerk.mean.X fBodyAccJerk.mean.Y fBodyAccJerk.mean.Z

the average by activity and subject of
the mean of Fast Fourier Transform (FFT) applied to tBodyAccJerk.[XYZ]

#### fBodyAccJerk.std.X fBodyAccJerk.std.Y fBodyAccJerk.std.Z

same as fBodyAccJerk.mean.[XYZ] but is the standard deviation

#### fBodyGyro.mean.X fBodyGyro.mean.Y fBodyGyro.mean.Z

the average by activity and subject of
the mean of Fast Fourier Transform (FFT) applied to tBodyGyro.[XYZ]

#### fBodyGyro.std.X fBodyGyro.std.Y fBodyGyro.std.Z

same as fBodyGyro.mean.[XYZ] but is the standard deviation

#### fBodyAccMag.mean

the average by activity and subject of
the mean of Fast Fourier Transform (FFT) applied to tBodyAccMag

#### fBodyAccMag.std

same as fBodyAccMag.mean but is the standard deviation

#### fBodyBodyAccJerkMag.mean

the average by activity and subject of
the mean of Fast Fourier Transform (FFT) applied to tBodyAccJerkMag

#### fBodyBodyAccJerkMag.std

same as fBodyBodyAccJerkMag.mean but is the standard deviation

#### fBodyBodyGyroMag.mean

the average by activity and subject of
the mean of Fast Fourier Transform (FFT) applied to tBodyGyroMag

#### fBodyBodyGyroMag.std

same as fBodyBodyGyroMag.mean but is the standard deviation

#### fBodyBodyGyroJerkMag.mean

the average by activity and subject of
the mean of Fast Fourier Transform (FFT) applied to tBodyGyroJerkMag

#### fBodyBodyGyroJerkMag.std

same as fBodyBodyGyroJerkMag.mean but is the standard deviation

#### activity

the activity label

#### subject

the subject id
