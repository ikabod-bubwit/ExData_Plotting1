# Referemce:
# http://www.statmethods.net/graphs/line.html

source('readPowerConsumptionData.R')
f<-readHouseHoldPowerConsumption()

plot2PNG <- function() {
	png("plot2.png")
	plot(x=f$DateTime, y=f$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab='')
	dev.off()	
}

plot2ToScreen <- function() {
	plot(x=f$DateTime, y=f$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab='')
}

main <- function() {
	plot2PNG()
	plot2ToScreen()
}

main()