best <- function(state, outcome){
  
  
  
  outcome <- read.csv("C:/Users/Luke/OneDrive/Desktop/rprog_data_ProgAssignment3-data (2)/outcome-of-care-measures.csv", colClasses = "character")
  
 
 
  ## insert directory of the csv location
  ## Read the outcome data
  
  #Extracting columns of interest: heart attack, heart failure, pneumonia, states, Hospital.Name
  poi <- as.data.frame(cbind(outcome[,2], outcome[,7], outcome[,11], outcome[,17], outcome[,23]))
  colnames(poi) <- c("Hospital.Name", "states", "heart attack","heart failure", "pneumonia")
  
  ## Check that state and outcome are valid
  
   
  if(!state %in% poi[,"states"]){
    stop('Invalid State')
  }
  
  if(!outcome %in% c("heart attack","heart failure", "pneumonia")){
    stop("Invalid Outcome LOL")
  }
  
  ## Returns hospital name in that state with lowest 30-day death rate
  
   inst <- poi[poi$state == state,]
  ## Convert outcome rate to numeric
  ## Convert all outcomes to numeric to ensure that we can remove using !is.na fucntion
   
   inst[, c(3:5)] <- sapply(inst[, c(3:5)], as.numeric)
   
  ## Remove all the rows with NA's that are included in outcome.
   
  inst <- na.omit(inst)

   
  hospital <- inst[inst[,outcome] == min(inst[,outcome]),1]
  
  hospital

  
 
  
}

