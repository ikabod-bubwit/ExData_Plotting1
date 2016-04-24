# Referemce:
# http://www.statmethods.net/graphs/line.html

source('readPowerConsumptionData.R')
f<-readHouseHoldPowerConsumption()

plot3ToScreen <- function() {
	plot(x=f$DateTime, y=f$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
	lines(x=f$DateTime, y=f$Sub_metering_2, col="red")
	lines(x=f$DateTime, y=f$Sub_metering_3, col="blue")
	legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty="l", col=c("black","red","blue"), lwd=2, cex=0.7)
}

plot3PNG <- function() {
	png("plot3.png")
	plot3ToScreen()
	dev.off()	
}



main <- function() {
	plot3PNG()
	plot3ToScreen()
}

main()