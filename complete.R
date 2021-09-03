complete <- function(directory, id = 1:332) {
  
setwd("C:/Users/Luke/OneDrive/Desktop")
  #insert working directory into the setwd
  
  
files <- list.files(pattern = "*.csv", full.names = TRUE)
  #files each csv file into files.
  
  
directory <- "specdata"
  #insert specdata as a single vector character
  

#creating an empty data frame with id listed and nobs as the starting point.


    count_complete <- function(fname) sum(complete.cases(read.csv(fname)))
    fnames <- list.files(directory, full.names=TRUE)[id]
    data.frame(id = id, complete = unlist(lapply(fnames, count_complete)))
    
    
  }

  complete("specdata", c(2, 4, 8, 10, 12))
  #specify the id that needs to be analyzed.

  
