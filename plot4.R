# Code written in RStudio Version 0.98.1103
# R Version: 3.2.0
# OS: Windows 8.1

# This script uses the data from eda_project1_data.R and makes a quad plot
# then saves it to a png file at 480px480p size.

source('eda_project1_data.R')

# Open png device
png(filename='plot4.png')

# Make 2x2 grid for plots
par(mfrow=c(2,2))

# Top left plot from previous code
plot(DT$DateTime, DT$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

# Top right plot
plot(DT$DateTime, DT$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

# Bottom left plot from previous code
plot(DT$DateTime, DT$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(DT$DateTime, DT$Sub_metering_2, col='red')
lines(DT$DateTime, DT$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')

# Bottom right plot
plot(DT$DateTime, DT$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

# Close device
dev.off()