png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(pow$DateTime,pow$Global_active_power,ylab="Global Active Power",xlab='',type='l')
plot(pow$DateTime,pow$Voltage,ylab="Voltage",xlab='datetime',type='l')
plot(pow$DateTime,pow$Sub_metering_1, type="n", ylab = "Energy sub metering",xlab='')
lines(pow$DateTime,pow$Sub_metering_1, type = "l", col = "black")
lines(pow$DateTime,pow$Sub_metering_2, type = "l", col = "red")
lines(pow$DateTime,pow$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
plot(pow$DateTime,pow$Global_reactive_power,ylab="Global_reactive_power",xlab='datetime',type='l')
dev.off()