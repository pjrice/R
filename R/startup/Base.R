#functions to source on startup

#reverse of the interaction function; "disentangles" interacted factors
#args: fac, idx
#fac is the vector of interacted factors (most likely a column in a dataframe of n rows)
#idx is the index of the position of the factor that you want to extract for each row
uninteract = function(fac, idx) sapply( strsplit(as.character(fac), "\\."), "[", idx)

#inserts row into dataframe at specified index
#args: existingDF, newrow, r
#existingDF: the dataframe that you would like to add a row to
#newrow: the row you would like to add
#r: the position you would like to add the new row at
insertRow <- function(existingDF, newrow, r) {
  existingDF[seq(r+1,nrow(existingDF)+1),] <- existingDF[seq(r,nrow(existingDF)),]
  existingDF[r,] <- newrow
  existingDF
}
