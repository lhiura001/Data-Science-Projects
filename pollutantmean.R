pollutantmean <- function(directory, pollutant, id = 1:332){
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of  the pollutant for which we will calcultate the
  ## mean; either "sulfate" or "nitrate"
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result
  
  #Obtaining the working directory as a character vector of length 1
  

setwd("C:/Users/Luke/OneDrive/Desktop")
#insert working directory into the setwd

  
files <- list.files(pattern = "*.csv")
#files each csv file into files.

directory <- "specdata"
#insert specdata as a single vector character

files_list <- list.files(directory, full.names= TRUE)


dat <- data.frame() #creating an empty data frame

number_of_files <- length(files)

for (i in id){
  file_dir <- paste(directory, files_list[i])
  dat <- rbind(dat, read.csv(files_list[i]))
}
  mean(dat[[pollutant]], na.rm=TRUE)
}

