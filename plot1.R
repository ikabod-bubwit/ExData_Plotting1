# Referemce:
# http://www.statmethods.net/graphs/line.html

source('readPowerConsumptionData.R')
f<-readHouseHoldPowerConsumption()

plot1PNG <- function() {
	png("plot1.png")
	hist(f$Global_active_power,main="Global Active Power",ylab="Frequency",xlab="Global Active Power (kilowatts)",col="red",ylim=c(0,1200))
	dev.off()	
}

plot1ToScreen <- function() {
	hist(f$Global_active_power,main="Global Active Power",ylab="Frequency",xlab="Global Active Power (kilowatts)",col="red",ylim=c(0,1200))
}

main <- function() {
	plot1PNG()
	plot1ToScreen()
}

main()