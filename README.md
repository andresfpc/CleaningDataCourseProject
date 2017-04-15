# Getting and Cleaning Data Course Project for Coursera Data Science specialization
*by Andrés Felipe Palacios Clavijo*

Data used to apply the concepts learned in this course corresponds to data collected from the accelerometers from the Samsung Galaxy S smartphone and the required datasets to use can be obtained through this link:  [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## R script
You can find the R script (properly commented) called [*run_analysis.R*](https://github.com/andresfpc/CleaningDataCourseProject/blob/master/run_analysis.R) where all instructions to obtain the tidy data with the following tasks:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Tidy datasets
The first tidy data set corresponds to the general table where subjects and activities along with the variables of interest are shown:

  [*totalSet.csv*](https://github.com/andresfpc/CleaningDataCourseProject/blob/master/totalSet.csv)
  
The second tidy data set corresponds to the table where the mean of each variables of interest is shown depending on the subject and activity performed:

  [*averageVars.csv*](https://github.com/andresfpc/CleaningDataCourseProject/blob/master/averageVars.csv)
  
  ## Code book
  A description of the data sets obtained and its variables can be viewed in the following file:
  
  [*CodeBook.md*](https://github.com/andresfpc/CleaningDataCourseProject/blob/master/CodeBook.md)
