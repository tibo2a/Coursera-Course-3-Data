Project for Johns Hopkins University Coursera : Getting and Cleaning
Data in the Data Science specialization

Project Purpose
---------------

Demonstrate ability to collect and clean the data set. The data comes
from the accelerometers from the Samsung Galaxy S smartphone and can be
download at :  
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>  
For more information, you can go to :  
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Project Files
-------------

### run\_analysis.R

To use the run\_analysis.R script you have to download the data from the
first link. Then, you have to unzip the file in the directory you want.
After that, you must put the run\_analysis.R file on the same directory
as the the repo «Assignment». Running the R file may take less than a
minute. It will create a new txt file called tidy\_data.txt on the same
directory.

### tidy\_data.txt

This tidy data set includes 180 rows and 68 columns. It aggregates the
mean of each feature for each activity and each subject. I choose to
exclude the variable containing the word frequency because it is
calculated already from the mean. For more details, see CodeBook.md.
Example R commands to load tidy\_data.txt.  
tidy\_data = read.table(‘tidy\_data.txt’,header=TRUE)

### CodeBook.md

Describes the variables, the data, and any transformations or work
performed to clean up the data.
