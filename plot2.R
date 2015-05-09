# Code written in RStudio Version 0.98.1103
# R Version: 3.2.0
# OS: Windows 8.1

# This script uses the data from eda_project1_data.R and makes a plot
# then saves it to a png file at 480px480p size.

source('eda_project1_data.R')

# Open png device
png(filename='plot2.png')

# Make plot
plot(DT$DateTime, DT$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Close device
dev.off()