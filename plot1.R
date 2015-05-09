# Code written in RStudio Version 0.98.1103
# R Version: 3.2.0
# OS: Windows 8.1

# This script uses the data from eda_project1_data.R and makes a histogram
# then saves it to a png file at 480px480p size.

source('eda_project1_data.R')

# Open png device
png(filename='plot1.png')

# Make histogram
hist(DT$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

# Close device
dev.off()