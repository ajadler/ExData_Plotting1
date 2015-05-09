# Code written in RStudio Version 0.98.1103
# R Version: 3.2.0
# OS: Windows 8.1

# This script checks if the source data is available.  If not, it downloads and formats
# the data into a useable format for the plotting scripts.

if (!file.exists('houshold_power_consumption.rds')) {
  
  
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
                , destfile='houshold_power_consumption.zip')
  unzip('houshold_power_consumption.zip')
  
  # Read data into table DT
  DT <- read.table('household_power_consumption.txt', header=TRUE,
                         sep=';', na.strings='?',
                         colClasses=c(rep('character', 2), 
                                      rep('numeric', 7)))
  
  # Convert date and get rid of extra data then add DateTime column
  DT$Date <- as.Date(DT$Date,"%d/%m/%Y")
  DT <- subset(DT, Date > '2007-01-31' & Date < '2007-02-03')
  DT$DateTime <- strptime(paste(DT$Date,DT$Time),"%Y-%m-%d %H:%M:%S")

  # Save rds file
  saveRDS(DT, file='houshold_power_consumption.rds')
} else {
  DT <- readRDS('houshold_power_consumption.rds')
}