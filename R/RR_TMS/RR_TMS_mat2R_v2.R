#script to draw in data from RR_TMS matlab files

#load the proper package
library(R.matlab)



#the directory the subject folders are in - each subj folder contains 4 .mat files
datadir = "/media/storage/testing_ground/RR_TMS_data/good_subjects"

#get a list of directory contents
subjdirs <- list.files(datadir)

