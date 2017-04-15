# Code book for variables in each dataset
  by Andrés Felipe Palacios Clavijo

1. tidy data set with subjects, activities and variables of interest (file: totalSet.csv)

   The columns and its meanings are presented as:

   - subject: Identifier of each subject that participated in test or training set (quantitative variable)
  
   - activity: Type of activity that was performed by every subject (categorical variable)
  
   - The variables of interest are formatted as:
  
      tBodyAcc_mean_X, tBodyAcc_mean_Y, tBodyAcc_mean_Z, tBodyAcc_std_X, tBodyAcc_std_Y,
      tBodyAcc_std_Z, tGravityAcc_mean_X, tGravityAcc_mean_Y, tGravityAcc_mean_Z, tGravityAcc_std_X,
      tGravityAcc_std_Y, tGravityAcc_std_Z, tBodyAccJerk_mean_X, tBodyAccJerk_mean_Y, tBodyAccJerk_mean_Z,
      tBodyAccJerk_std_X, tBodyAccJerk_std_Y, tBodyAccJerk_std_Z, tBodyGyro_mean_X, tBodyGyro_mean_Y,
      tBodyGyro_mean_Z, tBodyGyro_std_X, tBodyGyro_std_Y, tBodyGyro_std_Z, tBodyGyroJerk_mean_X,
      tBodyGyroJerk_mean_Y, tBodyGyroJerk_mean_Z, tBodyGyroJerk_std_X, tBodyGyroJerk_std_Y, tBodyGyroJerk_std_Z,
      tBodyAccMag_mean, tBodyAccMag_std, tGravityAccMag_mean, tGravityAccMag_std, tBodyAccJerkMag_mean,
      tBodyAccJerkMag_std, tBodyGyroMag_mean, tBodyGyroMag_std, tBodyGyroJerkMag_mean, tBodyGyroJerkMag_std,
      fBodyAcc_mean_X, fBodyAcc_mean_Y, fBodyAcc_mean_Z, fBodyAcc_std_X, fBodyAcc_std_Y, fBodyAcc_std_Z,
      fBodyAccJerk_mean_X, fBodyAccJerk_mean_Y, fBodyAccJerk_mean_Z, fBodyAccJerk_std_X, fBodyAccJerk_std_Y,
      fBodyAccJerk_std_Z, fBodyGyro_mean_X, fBodyGyro_mean_Y, fBodyGyro_mean_Z, fBodyGyro_std_X, fBodyGyro_std_Y,
      fBodyGyro_std_Z, fBodyAccMag_mean, fBodyAccMag_std, fBodyBodyAccJerkMag_mean, fBodyBodyAccJerkMag_std,
      fBodyBodyGyroMag_mean, fBodyBodyGyroMag_std, fBodyBodyGyroJerkMag_mean, fBodyBodyGyroJerkMag_std
  
   Every variable mentioned previously is normalized and bounded within [-1,1].
  
2. average of each variable for each activity and each subject dataset (file: averageVars.csv)

   For the first tidy data set (file: totalSet.csv) it was obtained for each variable the mean of its observations, depending on the the subject and the performed activity.
    
  
