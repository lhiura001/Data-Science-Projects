outcome <- read.csv("C:/Users/Luke/OneDrive/Desktop/rprog_data_ProgAssignment3-data (2)/outcome-of-care-measures.csv", colClasses = "character")
## insert directory of the csv location

head(outcome)
ncol(outcome)
nrow(outcome)
names(outcome)


## Creating a simple histogram of the 30 day death rates from heart attack 
## changing the character value of to numeric values.

outcome[,11] <- as.numeric(outcome[,11])

hist(outcome[,11], xlab = "30 day death rates from heart attack",  main = "Histogram of 30 day death rates")

## Column 11: Hospital 30-Day Death (Mortality) Rates from Heart Attack: Lists the risk adjusted rate (percentage) for each hospital.
