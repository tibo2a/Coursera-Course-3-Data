Project for Johns Hopkins University Coursera : Getting and Cleaning
Data in the Data Science specialization

Transformations
---------------

The following transformation were applied to the original data set:

-   Reading "feature.txt", "X\_test.txt", "Y\_test.txt" and
    "subject.txt"  
-   Rename the columns of "X\_test.txt" (using "features.txt"),
    "Y\_test.txt"("id") and "subject.txt"  
-   Merge "subject.txt" ,X\_test.txt" and "Y\_test.txt" to get
    "test\_data"  
-   Reading "X\_train.txt", "Y\_train.txt"  
-   Rename the columns of "X\_train.txt" (using "features.txt") and
    "Y\_train.txt" ("id")  
-   Merge "subject.txt" ,X\_train.txt" and "Y\_train.txt" to get
    "train\_data"  
-   Merge "test\_data" and "train\_data" to get "data\_set"
-   We select the row "subject","activity" and the variable which
    contained mean or std in their names. I decided to exclude the
    varibale containing MeanFreq  
-   Numeric Activity labels converted to characters labels by merging
    "data\_set" and "activity.txt"  
-   Aggregate by "Subject" and "Activity" and write "tidy\_data.txt"

Tidy data File
--------------

-   180 rows and 68 columns
-   Aggregate the mean and std for each subject and activity

### Variable

-   Column 1 : "Subject" : Sunject ID number , Integer from 1 to 30
-   Column 2 : "Activity": The activity performed by the subject, 6
    Factor level:  
    \* Walking  
    \* Walking\_Upstairs  
    \* Walking\_Downstairs  
    \* Sitting  
    \* Standing  
    \* Laying  
-   Column 3 to 68: Quantified mean and std features (descripted below)
    named with the patern \[t|f\]-\[description\]-\[mean|std\]
    optionnaly followed by .\[X|Y|Z\]:  
    \* t and f stand for time domain and frequency domain respectively  
    \* mean and std stand for average and standard deviation
    respectively  
    \* X, Y and Z represent Cartesian directions of the accelerometer
    coordinate frame
