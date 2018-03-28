 
run_analiysis <- function(){
        
        
        
        features <- read.table("./Assignement/UCI HAR Dataset/features.txt")
        
        # reading txt files from test
        x_test <- read.table("./Assignement/UCI HAR Dataset/test/X_test.txt")
        y_test <- read.table("./Assignement/UCI HAR Dataset/test/Y_test.txt")
        subject_test <- read.table("./Assignement/UCI HAR Dataset/test/subject_test.txt")
        # rename variable
        names(subject_test)<-"subject"
        names(y_test)<-"id"
        names(x_test)<-features[,2]
        # merge data 
        test_data <- subject_test%>%bind_cols(y_test)%>% bind_cols(x_test)
        
        # reading txt files from training
        x_train <- read.table("./Assignement/UCI HAR Dataset/train/X_train.txt")
        y_train <- read.table("./Assignement/UCI HAR Dataset/train/Y_train.txt")
        subject_train <- read.table("./Assignement/UCI HAR Dataset/train/subject_train.txt")
        # rename variable
        names(subject_train)<-"subject"
        names(y_train)<-"id"
        names(x_train)<-features[,2]
        # merge data, before i checked the dimension 
        train_data <- subject_train%>%bind_cols(y_train)%>% bind_cols(x_train)
        # merging the two data set: training and test
        
        data_set<-bind_rows(test_data,train_data)
        
        # we select the first row(subject, the second row (activity) and the row names who contains mean or std
        # we exclude meanFreq because  its calculated from the mean  
        
        data_set<-data_set[,c(1,2,grep("std|mean[^F]",names(data_set)))]
        
        # read the activity . txt 
        activity_file <- read.table("./Assignement/UCI HAR Dataset/activity_labels.txt")
        # merge to obtain the activity names 
        data_set<-merge(data_set,activity_file,by.x="id",by.y="V1")
        #data_set
        # exclude the variable containing the values Activity (1,2,3,4,5,6)
        data_set<-data_set[2:69]
        data_set <- rename(data_set,activity=V2)
        # rename all the variale, replace "()" by ""
        #data_set <- gsub("[()]","",data_set)
       
        # group by subject and activity , and we calculate the mean 
        data_set <- data_set %>% 
                group_by(subject,activity) %>% 
               summarise_all(mean)
        # write into txt file  
        #write.table(data_set,file="tidy_data.txt",quote=FALSE,sep=" ",dec=".",row.names = FALSE)
        data_set
}

