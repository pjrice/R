#script to convert DRI data from mat to R format

#load the proper package
library(R.matlab)

#set the starting directory
datadir <- "Z:\\Work\\UW\\projects\\RR_TMS\\data\\data_R\\good_subjects"

#get a list of directory contents
subjdirs <- list.files(datadir)

#go into each folder, get contents, load each mat file, save each as R file
for (i in 1:length(subjdirs)) {
  
  #get a list of the files in the subj directory
  subjfiles <- list.files(paste(datadir,subjdirs[i],sep="\\"))
  
  for (ii in 1:length(subjfiles)) {
    
    #load the mat file
    data <- readMat(paste(paste(datadir,subjdirs[i],sep="\\"),subjfiles[ii],sep="\\"))
    
    #make the filename
    fname <- paste(paste(datadir,subjdirs[i],sep="\\"),paste(strsplit(subjfiles[ii],".mat"),"RData",sep="."),sep="\\")
    
    #save the data
    save(data,file=fname)
    
    #clear data, fname
    rm(data,fname)
  }
  
}

