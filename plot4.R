source('readData.R')

png('plot4.png')
par(mfrow=c(2,2))
plot(sub$DateTime, sub$Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')
plot(sub$DateTime, sub$Voltage, type='l', xlab='datetime', ylab='Voltage')
plot(sub$DateTime, sub$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(sub$DateTime, sub$Sub_metering_2, col='red')
lines(sub$DateTime, sub$Sub_metering_3, col='blue')
legend("topright",
        col = c("black", "red", "blue"),
        c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        lwd = 1)
plot(sub$DateTime, sub$Global_reactive_power, type='l', xlab='datetime', ylab='Global_reactive_power')
 
dev.off()
