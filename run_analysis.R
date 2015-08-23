library(reshape2)
library(RCurl)
#===============================================================================
# 1 Read all the datasets and merge to form a big dataset 
#..............................
## 1.1 Read Data from training set
sub_train <- read.table("subject_train.txt") 
# info about volunteers - each row gives an ID number of a volunteer 

y_train <- read.table("y_train.txt") 
# activity : each row contains info about an activity. Corresponding  
# measurements are stored in the corresponding row of x_train

x_train <- read.table("X_train.txt")
# data from various measurements performed on volunteers 
#.....................

##1.2 Read Data from test set

sub_test <- read.table("subject_test.txt")
# info about volunteers - each row gives an ID number of a volunteer 

y_test <- read.table("y_test.txt")
# activity : each row contains info about an activity. Corresponding  
# measurements are stored in the corresponding row of x_test

x_test <- read.table("x_test.txt")
# data from various measurements performed on volunteers

#..................
## 1.3 Read the names of variables and extract only the required names

features <- read.table("features.txt") 
# names of the columns in  x_train and x_test : corresponds to variables like 
# mean or std of a measurement feature like "tbodyAcc-XYZ" etc 



#.......................
# 1.4 Merging Datasets


subject <- rbind(sub_train, sub_test) # all the volunteers
activity <- rbind(y_train, y_test) # all the activities

sub_act <- cbind(subject,activity)
colnames(sub_act) <- c("subject", "activity")
col_key <- colnames(sub_act)

variable <- rbind(x_train, x_test) #all the measurements
colnames(variable) <- features$V2

rm ("x_train", "x_test", "y_train", "y_test", "sub_train", "sub_test")

merged_data <- cbind(sub_act,variable)

##=================================================================================================
##=================================================================================================
# 2. extracting the required data: only mean and std of the measurements

col_measurement <- features$V2[grepl("(mean|std)\\(\\)", features$V2)]
## only those column names containing words either "mean" or "std" 

required_col_names <- union(col_key, col_measurement)

required_data <- merged_data[,required_col_names]

rm ("merged_data", "features", "variable", "subject")

##=================================================================================================
##=================================================================================================
## 3.Use descriptive names to describe the "activity" labels in the dataset

act_names <- read.table("activity_labels.txt") #read the labels
colnames(act_names) <- c("activity", "activity_name")

required_data_act <- merge(required_data, act_names,by="activity", all.x = TRUE)
# This will add another column called "act_name" contaning the name of each 
# activity at the end of dataset "required_data".

##=================================================================================================
##===============================================================================================
## 4. Label the dataset with descriptive variable names

## 4.1 Reshape the data into a long dataset. 

col_key <- union(col_key, colnames(act_names))
required_data_melt <- melt(required_data_act, col_key)
## required_data_melt has now 5 columns instaed of 69 columns. 

rm ("required_data_act")
##...............
### 4.2  Make a new dataframe containing Descriptive Variable names
x <- required_data_melt$variable
v_names <- gsub("^((f|t)(Body|BodyBody|Gravity)(Gyro|Acc|Body)[\\-]*(Jerk)?(Mag)?[\\-]*(mean|std)[\\(\\)\\-]*(X|Y|Z)?)", 
                "\\2|\\3|\\4|\\5|\\6|\\7|\\8", x)

## Insert "|" at appropriate places in each name that comes under 
##"required_data_melt$variable". 
 

variable_names_split <- strsplit(v_names, "\\|") 
## split each name at "|". Output is a list. 

v_col <- length(unlist(variable_names_split[1])) 
# Total number of abbrevations like acc, jerk, std etc in each name.  
v_row <- length(variable_names_split)
# Total number of names in the list 


v_unlist <- unlist(variable_names_split)
# All the abbrevations in all the names into single vector.
v_matrix <- matrix(v_unlist, nrow=v_row, ncol=v_col, byrow=TRUE)
# Converts the vector into a matrix : each variable name now corresponds to an entire
# row in the matrix, made up of 7 columns.

v_df <- as.data.frame(v_matrix)
colnames(v_df) <- c("domain","signal","source","jerk", "magnitude","operation","axis") 

#....................

## 4.3 combine the dataset with the dataframe containing descriptive variable names

final_data <- cbind(required_data_melt, v_df)

rm("v_unlist","v_matrix","v_names","variable_names_split")

##=====================================================================================
##=======================================================================================
## 5. Make a new tidy dataset containing avarage of each variable for each activity and subject

tidy_dataset <- dcast(final_data, subject+activity_name ~ variable, mean)

write.table(tidy_dataset,"tidy_dataset.txt", row.names = FALSE, col.names = TRUE, 
            quote = FALSE)

        
       


























