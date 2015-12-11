source('readData.R')

png('plot1.png')
hist(sub$Global_active_power,col='Red', main='Global Active Power', xlab='Global Active Power (kilowatts)', ylab='Frequency')
dev.off()
