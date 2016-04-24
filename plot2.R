# Referemce:
# http://www.statmethods.net/graphs/line.html

source('readPowerConsumptionData.R')
f<-readHouseHoldPowerConsumption()

plot2ToScreen <- function() {
	plot(x=f$DateTime, y=f$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab='')
}

plot2PNG <- function() {
	png("plot2.png")
	plot2ToScreen()
	dev.off()	
}



main <- function() {
	plot2PNG()
	plot2ToScreen()
}

main()