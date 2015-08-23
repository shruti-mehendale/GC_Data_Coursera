--------------------------------------------------------------------------------
---------------------------------------------------------------------
This document explains the script run_analysis.R. It is a part of the
Course Project 2 in the Coursera Getting and Cleanig data course. 

## 1.Before running the code
1.1 The follwing text files are used in this project
        i.activity_labels.txt  
        ii.features.txt   
        iii.subject_train.txt  
        iv.subject_test.txt  
        v. x_train.txt  
        vii.x_test.txt  
        viii.y_train.txt  
        ix.y_test.txt  

   Save them all in one directory. This will be the working directory.

1.2 Install packages RCurl and reshape2.

## 2.Actions performed on data



2.1 All the *.txt files(except activity_labels.txt) are read. subject.test, 
subject_train, x_train,x_test , y_train and y_test files are combined 
appropriately to form one big dataset called  merged_data. 



2.2 Features.txt contains all the names corresponding to columns in x_train and 
x_test files. With grepl function, only those column names which contain words 
mean or std are selected(col_measurement). Using this information, the big dataset 
merged_data,is then subsetted, to form a new dataset called required_data, 
which caontains columns corresponding to subject, activity and other 66 columns
containing either mean or std.   
required_data : 10299 rows, 68 columns  


2.3 the file activity_labels is read. It relates the activity (given in y_train and
y_test, which is also a column named activity in dataset required_data) and 
the actual name of the activity. This dataset act_names(6 rows, 2 columns) is 
then merged with required_data, by the column called activity.(common in both of 
them.) The dataset after merging the two is called required_data_act. It has all
the data from required_data plus an additional column activity_name, which gives the 
corresponding activity name for each row.    
required_data_act : 10299 rows, 69 columns  


2.4 Now we have three columns which identify either subject or the activity
(namely subject, activity, act_name). They are called col_key. Fuction melt()
is applide to the dataset required_data_act, with respect to these three columns.
the resulting dataset, required_data_melt has 5 colmuns instead of 69.   
required_data_melt : 679734 rows, 5 columns (first 3 same as "col_key", variable,value)

2.5 Each name under column variable of dataframe required_data_melt is a one of 
the names in col_measurement(see 2.1). Function gsub is used to insert "|" at 
appropriate places in each name that comes under required_data_melt$variable. 
Then, strpsplit is used to split the names at each "|". the output is a list.

2.6 The list is unlisted to form a single character vector contaning all the
small parts of all the names. It is further converted into a matrix and then a 
dataframe called v_df. Thus each name is fragmented in small part and each small
part is placed in a column. Each name in required_data_melt$variable is equivalent
to a an entire row of v_df, splitted into 7 columns.  

2.7 The two data frames required_data_melt and v_df are combined by columns.
The resulting dataframe is called final_data.   

final_data : 679734 rows, 12 columns

Now in final_data, each row corresponds to a single measurement and each column
corresponds to a specific variable/feature.

2.8 tidy_dataset : A new dataset containing the average of each variables for 
each activity and each subject is created by useing dcast function on 
final_data.     
tidy_dataset : 180 rows, 68 columns






