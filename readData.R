fn <- 'household_power_consumption.txt'
df <- read.table(fn, header=TRUE, sep=';', na='?', 
                 colClasses=c('character','character','numeric','numeric','numeric','numeric', 'numeric','numeric','numeric'))

sub <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007",  ]

sub$DateTime <- strptime(paste(sub$Date, sub$Time), format='%d/%m/%Y %H:%M:%S')
