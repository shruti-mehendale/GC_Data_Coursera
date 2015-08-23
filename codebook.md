---------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
This is a codebook for datasets "final_data" and "tidy_data" created by script
run_analysis.R. It is a part of the
Course Project 2 in the Coursera Getting and Cleanig data course. 



##final_data  variables    
### key columns (col_key)    

[1]subject :  ID of subject, int (1-30)  
[2]activity :  ID of activity, int (1-6)  
[3]activity_name :  name of activity, Factor w/ 6 levels  

### measurement columns (col_measurement)  

[1]variable :  complete name of the feature vector, Factor w/ 66 levels (eg. tBodyAcc-mean()-X) 
     
[2]value : the actual value, num (range: -1:1)  

[3]domain: Domain of measurement, Factor w/ 2 levels: t: time or f:frequency 

[4]signal: Accelaration signal is splitted into Body or Gravity signals. Factor w/3 levels: Body,BodyBody and Gravity  (BodyBody might be a typo)   

[5]source : source of the measurement either from accelerometer or gyroscope, Factor w/ 2 levels: Acc and Gyro    

[6]jerk : is signal 'Jerk' ? Factor w/ 2 levels:  Jerk or non Jerk.... body linear accelaration and angular velocity are derived in time to obtain Jerk    

[7]magnitude: is there a 'Magnitude' value ? Factor w/ 2 levels:  Mag or non Mag ...magnitude of the JERK signal.   

[8]operation : which operation is performed on the measured signal, Factor w/ 2 levels: mean(average) or std (standard deviation)  

[9]axis: FFT extrapolated to axis , Factor w/ 2 levels: no FFT-axis or X, Y or Z  



## tidy_data 
### key columns(col_key)

[1]subject: ID of subject, int (1-30)  
[2]activity_name: actual name of activity, Factor w/ 6 levels  


### measurement columns (col_measurement)

 [3] "tBodyAcc-mean()-X : the average value for this feature, num (range: -1:1)"            
 [4] "tBodyAcc-mean()-Y : the average value for this feature, num (range: -1:1)"          
 [5] "tBodyAcc-mean()-Z : the average value for this feature, num (range: -1:1)"          
 [6] "tBodyAcc-std()-X : the average value for this feature, num (range: -1:1)"           
 [7] "tBodyAcc-std()-Y : the average value for this feature, num (range: -1:1)"           
 [8] "tBodyAcc-std()-Z : the average value for this feature, num (range: -1:1)"           
 [9] "tGravityAcc-mean()-X : the average value for this feature, num (range: -1:1)"       
[10] "tGravityAcc-mean()-Y : the average value for this feature, num (range: -1:1)"       
[11] "tGravityAcc-mean()-Z : the average value for this feature, num (range: -1:1)"       
[12] "tGravityAcc-std()-X : the average value for this feature, num (range: -1:1)"        
[13] "tGravityAcc-std()-Y : the average value for this feature, num (range: -1:1)"        
[14] "tGravityAcc-std()-Z : the average value for this feature, num (range: -1:1)"        
[15] "tBodyAccJerk-mean()-X : the average value for this feature, num (range: -1:1)"      
[16] "tBodyAccJerk-mean()-Y : the average value for this feature, num (range: -1:1)"      
[17] "tBodyAccJerk-mean()-Z : the average value for this feature, num (range: -1:1)"      
[18] "tBodyAccJerk-std()-X : the average value for this feature, num (range: -1:1)"       
[19] "tBodyAccJerk-std()-Y : the average value for this feature, num (range: -1:1)"       
[20] "tBodyAccJerk-std()-Z : the average value for this feature, num (range: -1:1)"       
[21] "tBodyGyro-mean()-X : the average value for this feature, num (range: -1:1)"         
[22] "tBodyGyro-mean()-Y : the average value for this feature, num (range: -1:1)"         
[23] "tBodyGyro-mean()-Z : the average value for this feature, num (range: -1:1)"         
[24] "tBodyGyro-std()-X : the average value for this feature, num (range: -1:1)"          
[25] "tBodyGyro-std()-Y : the average value for this feature, num (range: -1:1)"          
[26] "tBodyGyro-std()-Z : the average value for this feature, num (range: -1:1)"          
[27] "tBodyGyroJerk-mean()-X : the average value for this feature, num (range: -1:1)"     
[28] "tBodyGyroJerk-mean()-Y : the average value for this feature, num (range: -1:1)"     
[29] "tBodyGyroJerk-mean()-Z : the average value for this feature, num (range: -1:1)"     
[30] "tBodyGyroJerk-std()-X : the average value for this feature, num (range: -1:1)"      
[31] "tBodyGyroJerk-std()-Y : the average value for this feature, num (range: -1:1)"      
[32] "tBodyGyroJerk-std()-Z : the average value for this feature, num (range: -1:1)"      
[33] "tBodyAccMag-mean() : the average value for this feature, num (range: -1:1)"         
[34] "tBodyAccMag-std() : the average value for this feature, num (range: -1:1)"          
[35] "tGravityAccMag-mean() : the average value for this feature, num (range: -1:1)"      
[36] "tGravityAccMag-std() : the average value for this feature, num (range: -1:1)"       
[37] "tBodyAccJerkMag-mean() : the average value for this feature, num (range: -1:1)"     
[38] "tBodyAccJerkMag-std() : the average value for this feature, num (range: -1:1)"      
[39] "tBodyGyroMag-mean() : the average value for this feature, num (range: -1:1)"        
[40] "tBodyGyroMag-std() : the average value for this feature, num (range: -1:1)"         
[41] "tBodyGyroJerkMag-mean() : the average value for this feature, num (range: -1:1)"    
[42] "tBodyGyroJerkMag-std() : the average value for this feature, num (range: -1:1)"     
[43] "fBodyAcc-mean()-X : the average value for this feature, num (range: -1:1)"          
[44] "fBodyAcc-mean()-Y : the average value for this feature, num (range: -1:1)"          
[45] "fBodyAcc-mean()-Z : the average value for this feature, num (range: -1:1)"          
[46] "fBodyAcc-std()-X : the average value for this feature, num (range: -1:1)"           
[47] "fBodyAcc-std()-Y : the average value for this feature, num (range: -1:1)"           
[48] "fBodyAcc-std()-Z : the average value for this feature, num (range: -1:1)"           
[49] "fBodyAccJerk-mean()-X : the average value for this feature, num (range: -1:1)"      
[50] "fBodyAccJerk-mean()-Y : the average value for this feature, num (range: -1:1)"      
[51] "fBodyAccJerk-mean()-Z : the average value for this feature, num (range: -1:1)"      
[52] "fBodyAccJerk-std()-X : the average value for this feature, num (range: -1:1)"       
[53] "fBodyAccJerk-std()-Y : the average value for this feature, num (range: -1:1)"       
[54] "fBodyAccJerk-std()-Z : the average value for this feature, num (range: -1:1)"       
[55] "fBodyGyro-mean()-X : the average value for this feature, num (range: -1:1)"         
[56] "fBodyGyro-mean()-Y : the average value for this feature, num (range: -1:1)"         
[57] "fBodyGyro-mean()-Z : the average value for this feature, num (range: -1:1)"         
[58] "fBodyGyro-std()-X : the average value for this feature, num (range: -1:1)"          
[59] "fBodyGyro-std()-Y : the average value for this feature, num (range: -1:1)"          
[60] "fBodyGyro-std()-Z : the average value for this feature, num (range: -1:1)"          
[61] "fBodyAccMag-mean() : the average value for this feature, num (range: -1:1)"         
[62] "fBodyAccMag-std() : the average value for this feature, num (range: -1:1)"          
[63] "fBodyBodyAccJerkMag-mean() : the average value for this feature, num (range: -1:1)" 
[64] "fBodyBodyAccJerkMag-std() : the average value for this feature, num (range: -1:1)"  
[65] "fBodyBodyGyroMag-mean() : the average value for this feature, num (range: -1:1)"    
[66] "fBodyBodyGyroMag-std() : the average value for this feature, num (range: -1:1)"     
[67] "fBodyBodyGyroJerkMag-mean() : the average value for this feature, num (range: -1:1)"
[68] "fBodyBodyGyroJerkMag-std() : the average value for this feature, num (range: -1:1)
