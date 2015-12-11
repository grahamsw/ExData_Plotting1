source('readData.R')

png('plot3.png')
plot(sub$DateTime, sub$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering')
lines(sub$DateTime, sub$Sub_metering_2, col='red')
lines(sub$DateTime, sub$Sub_metering_3, col='blue')
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()
