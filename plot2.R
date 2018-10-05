png("plot2.png", width = 480, height = 480)
pow$DateTime <- strptime(paste(pow$Date, pow$Time), format="%d/%m/%Y %H:%M:%S") 
plot(pow$DateTime,pow$Global_active_power,ylab="Global Active Power (kilowatts)",xlab='',type='l')
dev.off()