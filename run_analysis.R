##################################################

#setwd("D:/DSpecialization/DataCleaning/Week4/project/Dataset")
rm(list = ls())
library(dplyr)

##################################################

# Read of train dataset and test dataset separately
X_train <- tbl_df(read.table("train/X_train.txt"))
X_test <- tbl_df(read.table("test/X_test.txt"))

# Reading of the list of common features on both datasets
features <- read.table("features.txt", stringsAsFactors = FALSE)$V2

# Reading and concatenating of the list of subjects on each dataset
subjects <- c(read.table("train/subject_train.txt")$V1,
              read.table("test/subject_test.txt")$V1)

# Reading of the list of common activities on both datasets
activityLabels <- read.table("activity_labels.txt", stringsAsFactors = FALSE)

# Read of activities identifiers in each dataset separately
trainLabels <- read.table("train/y_train.txt")
testLabels <- read.table("test/y_test.txt")

##################################################

# From the activity indices and names table, a join operation
#  is performed over it and the respective data table (for
#  both train and test datasets)
activity <- c(inner_join(trainLabels, activityLabels, by = "V1")$V2,
              inner_join(testLabels, activityLabels, by = "V1")$V2)

# tabl_df objects from dplyr package are created to prepare a
#  big table containing the required tidy data
identifiers <- tbl_df(subjects) %>% rename(subject = value) %>%
      bind_cols(tbl_df(activity)) %>% rename(activity = value)

# The variables of interest (those containing the mean and
#  std of features) are selected using the grep function and
#  with gsub function,  final variable names are modified
interestVar <- grep(features, pattern = 'mean\\(\\)|std\\(\\)')
varNames <- features[interestVar]
finalNames <- gsub("-", "_",
               gsub("\\(|\\)", "", varNames))

# The training and test sets are merged into a big one
#  selecting only the variables of interest previously created
valuesSet <- bind_cols(bind_rows(X_test, X_train)) %>%
         select(interestVar) %>%
         setNames(., finalNames)

# Finally subject identifiers, activities and values of interest are linked
totalSet <- bind_cols(identifiers, valuesSet)

# Using aggregate function mean of variables by subject and
#  activity simultaneously can be stored into a table
averageVars <- aggregate(select(totalSet, 3:ncol(totalSet)),
                  by = list(subject = totalSet$subject,
                     activity = totalSet$activity),
                  mean)

# Tidy datasets are saved into csv files
write.table(x = totalSet, "totalSet.csv", sep = ",", quote = FALSE)
write.table(x = averageVars, "averageVars.csv", sep = ",", quote = FALSE)
