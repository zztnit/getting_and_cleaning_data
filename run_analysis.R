
##1.Merges the training and the test sets to create one data set.

datapath <- "./UCI HAR Dataset"
datatype_vector <- c("train","test")
dflist <- list()

#read train and test dataframes into a list of dataframe called dflist.

for (datatype in datatype_vector) {
  X_path_file <- paste0(datapath, "/", datatype,"/X_",datatype, ".txt")
  y_path_file <- paste0(datapath, "/", datatype,"/y_",datatype, ".txt")
  subject_path_file <- paste0(datapath, "/", datatype,"/subject_",datatype, ".txt")
  X <- read.table( X_path_file, stringsAsFactors = FALSE)
  
  activity_id <- read.table( y_path_file, stringsAsFactors = FALSE)
  # let 1st colname be "activity_id"
  names(activity_id)[1] <- "activity_id"
  
  subject_id  <-  read.table( subject_path_file, stringsAsFactors = FALSE)
  # let 1st colname be "subject_id"
  names(subject_id)[1] <- "subject_id"
  
  dflist[[which(datatype==datatype_vector)]] <- cbind(X, activity_id, subject_id)
  rm("X", "activity_id", "subject_id")
}

# merge train dataframe and test dataframe into a new dataframe, df.
df <- rbind(dflist[[1]], dflist[[2]])
rm("dflist")



##2.Extracts only the measurements on the mean and standard deviation 
##  for each measurement.

featuresdf <- read.table(paste0(datapath,"/features.txt"), stringsAsFactors = FALSE)
# take the 2nd variable as a vector
features_vector <- featuresdf$V2


#idx, the indexes of the measurements on the mean and standard deviation
idx1 <- grep("mean\\(\\)", features_vector, ignore.case = TRUE)
idx2 <- grep("std\\(\\)", features_vector, ignore.case = TRUE)
idx <- union(idx1, idx2)

#add_idx, the index of variable activity_id and subject_id
add_idx <- (length(features_vector)+1):(dim(df)[2])
col_select <- c(idx, add_idx)
df_select <- df[,col_select]

##3.Uses descriptive activity names to name the activities in the data set
#table(df_select$activity_id)

activitylabel_path_file <- paste0(datapath, "/activity_labels.txt")
activitylabeldf <- read.table( activitylabel_path_file, stringsAsFactors = FALSE)

# map activity_id into activity label and rename it as activity
df_select$activity_id <- activitylabeldf$V2[df_select$activity_id]
names(df_select)[names(df_select)=="activity_id"] <- "activity"

##4.Appropriately labels the data set with descriptive variable names.

#replace "-"in features with "_" and remove "()".
features_vector <- gsub("-", "_", features_vector)
features_vector <- gsub("\\(\\)", "", features_vector)

#label the data set with processed names in features_vector
names(df_select)[1:length(idx)] <- features_vector[idx]


##5.From the data set in step 4, creates a second, independent tidy data set
##  with the average of each variable for each activity and each subject.

#groupcols, the column indexes of groupby variables: activiy and subject_id
groupcols <- dim(df_select)[2]-1:0
#compute the average of each variable using aggregate function
newdf <- aggregate(df_select[,-groupcols], list(df_select$activity, df_select$subject_id), mean)
#rename the first two columns name "group.1"  "group.2" with activity and subject_id        
names(newdf)[1:2] <- c("activity","subject_id")
str(newdf)

#Since all the measurement variable are normalised into a -1 to 1 range 
#(and the normalisation makes them unitless) 
#so they are all "the same kind of thing" and can go into the same column. 
library(tidyr)
narrowdf <- gather(newdf, features, average_value, -activity, -subject_id)

write.table(narrowdf, file = "tidydata.txt", row.name=FALSE)

#df <- read.table("tidydata.txt", header = TRUE, stringsAsFactors = FALSE)



