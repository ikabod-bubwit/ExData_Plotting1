# Referemce:
# http://www.statmethods.net/graphs/line.html

source('readPowerConsumptionData.R')
f<-readHouseHoldPowerConsumption()

plot4ToScreen <- function() {
	par(mfrow=c(2, 2))
	plot(x=f$DateTime, y=f$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

	plot(x=f$DateTime, y=f$Voltage, type="l", ylab="Voltage", xlab="datetime")

	plot(x=f$DateTime, y=f$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
	lines(x=f$DateTime, y=f$Sub_metering_2, col="red")
	lines(x=f$DateTime, y=f$Sub_metering_3, col="blue")
	legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="l", col=c("black", "red", "blue"), lwd=2, cex=0.4)

	plot(f$DateTime,  f$Global_reactive_power,  type = "l",  main = "",  xlab = "datetime")	
}

plot4PNG <- function() {
	png("plot4.png")
	plot4ToScreen()	
	dev.off()	
}



main <- function() {
	savePAR <- par()
	plot4PNG()
	plot4ToScreen()
	#restore previous par settings
	par(savePAR)
}

main()