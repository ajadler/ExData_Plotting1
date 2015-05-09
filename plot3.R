# Code written in RStudio Version 0.98.1103
# R Version: 3.2.0
# OS: Windows 8.1

# This script uses the data from eda_project1_data.R and makes a plot
# then saves it to a png file at 480px480p size.

source('eda_project1_data.R')

# Open png device
png(filename='plot3.png')

# Make plot
plot(DT$DateTime, DT$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(DT$DateTime, DT$Sub_metering_2, col='red')
lines(DT$DateTime, DT$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')

# Close device
dev.off()