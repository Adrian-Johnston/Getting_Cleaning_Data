
#run_analysis.R
#Coursera getdata-031
#Prepared by Adrian Johnston 21-Aug-2015
#Refer to README.md for codebook and explanation of script walkthrough

df.X_test<-read.table("test/X_test.txt")
df.X_train<-read.table("train/X_train.txt")
df.X_combined<-rbind(df.X_test, df.X_train)

df.subject_test<-read.table("test/subject_test.txt")
df.subject_train<-read.table("train/subject_train.txt")
df.subject_combined<-rbind(df.subject_test, df.subject_train)

df.y_test<-read.table("test/y_test.txt")
df.y_train<-read.table("train/y_train.txt")
df.y_combined<-rbind(df.y_test, df.y_train)

df.features<-read.table("features.txt")
df.features$V2

#Create column heading vector v.col_Names
v.col_Names<- c("subject_ID", "activity_ID", as.character(df.features$V2) )

df.all_data <-cbind(df.subject_combined, df.y_combined, df.X_combined)
colnames(df.all_data)<-v.col_Names

v.required_col_Names<-c("subject_ID", "activity_ID", names(df.all_data[grep("std()",names(df.all_data))]), names(df.all_data[grep("mean()",names(df.all_data))]) )

df.required_data<-df.all_data[,v.required_col_Names]
#df.required_data contains subject_ID, activity_ID followed by all columns with std() in the name, and all columns with mean() in the name

df.activity_labels<-read.table("activity_labels.txt")
df.required_data$activity_label <-  df.activity_labels[match(df.required_data$activity_ID, df.activity_labels$V1), 'V2']
#activity_labels have now been applied to make data more meaningful


df.output<-aggregate(x = df.required_data, by = list(ACTIVITY = df.required_data$activity_label,ACTIVITY_ID = df.required_data$activity_ID, SUBJECT_ID = df.required_data$subject_ID), FUN = "mean")
df.output$activity_ID<-NULL
df.output$subject_ID<-NULL
df.output$activity_label<-NULL

write.table(x= df.output, file = "step5_output.txt", row.name=FALSE)
