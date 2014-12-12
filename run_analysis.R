#!/usr/bin/R

library(plyr)

main <- function() {
	DF <- load_data()
	DF <- extract_mean_and_std(DF)
	DF <- change_activity_to_factor(DF)
	DF <- appropriately_labels_of_colname(DF)
	TDF <- average_by_activity_and_subject(DF)
	write_tidy_data(TDF, 'tidy_data.txt', row.name=FALSE)
}

load_data <- function() {
	print(paste('Working Directory is', getwd()))
	print("You should have the 'UCI HAR Dataset' directory in it")

	print('loading data from train/X_train.txt')
	X_train <- read.table(file.path(getwd(), 'UCI HAR Dataset', 'train', 'X_train.txt'), colClasses='numeric')
	print('loading data from train/y_train.txt')
	y_train <- read.table(file.path(getwd(), 'UCI HAR Dataset', 'train', 'y_train.txt'), colClasses='factor')
	print('loading subject from train/subject_train.txt')
	subject_train <- read.table(file.path(getwd(), 'UCI HAR Dataset', 'train', 'subject_train.txt'), colClasses='factor')

	print('loading data from test/X_test.txt')
	X_test <- read.table(file.path(getwd(), 'UCI HAR Dataset', 'test', 'X_test.txt'), colClasses='numeric')
	print('loading data from test/y_test.txt')
	y_test <- read.table(file.path(getwd(), 'UCI HAR Dataset', 'test', 'y_test.txt'), colClasses='factor')
	print('loading subject from test/subject_test.txt')
	subject_test <- read.table(file.path(getwd(), 'UCI HAR Dataset', 'test', 'subject_test.txt'), colClasses='factor')

	print('combine the train and test data to one dataset')
	X_data <- rbind(X_train, X_test)
	y_data <- rbind(y_train, y_test)
	subject_data <- rbind(subject_train, subject_test)
	all_data <- cbind(X_data, y_data, subject_data)

	print('loading features from features.txt')
	features <- read.table(file.path(getwd(), 'UCI HAR Dataset', 'features.txt'), colClasses='character')

	print('set the col names of the dataset')
	names(all_data) <- c(features[[2]], 'activity', 'subject')
	
	all_data
}

extract_mean_and_std <- function(DF) {
	DF[,grepl('-mean\\(\\)|-std\\(\\)|^activity$|^subject$', names(DF))]
}

change_activity_to_factor <- function(DF) {
	print('loading activities from activity_labels.txt')
	activities <- read.table(file.path(getwd(), 'UCI HAR Dataset', 'activity_labels.txt'), colClasses='character')
	levels(DF$activity) <- activities[,2]
	DF
}

appropriately_labels_of_colname <- function(DF) {
	print('appropriately labels of colname')
	names(DF) <- gsub('[()]', '', gsub('-', '.', names(DF)))
	DF
}

average_by_activity_and_subject <- function(DF) {
	print('average by activity and subject')
	TDF <- ddply(DF, .(activity, subject), function(df) {
		tdf <- lapply(df[,0:1-ncol(df)], mean, na.rm=TRUE)
		tdf <- as.data.frame(tdf)
		tdf$activity <- df$activity[1]
		tdf$subject <- df$subject[1]
		tdf
	})
}

write_tidy_data <- function(TDF, filename, ...) {
	print(paste('write tidy data to', filename))
	write.table(TDF, filename, ...)
}

main()
