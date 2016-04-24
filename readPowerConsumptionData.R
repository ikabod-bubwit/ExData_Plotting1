rm(list=ls())

library(dplyr)
library(pryr)

readHouseHoldPowerConsumption <- function() {
	
	f <- read.csv('household_power_consumption.txt',sep=';', colClasses=c("character","character","double","double","double","double","double","double","numeric"), na.string='?')

	message('Power Consumption Data Size: ', object_size(f))
	print(ncol(f))
	datetime <- as.data.frame(strptime(paste(f$Date, f$Time), "%d/%m/%Y %H:%M:%OS"))
	names(datetime)<-c('DateTime')
	fromDate<-strptime('2007-02-01 00:00:00', "%Y-%m-%d %H:%M:%S")
	toDate<-strptime('2007-02-02 23:59:00', "%Y-%m-%d %H:%M:%S")
	f<-cbind(f, datetime)
	# Clear some memory
	f$Date=NULL
	f$Time=NULL

	f<-subset(f, f$DateTime > fromDate & f$DateTime < toDate)
	message('Power Consumption Data Size after filtering: ', object_size(f))
	return(f)	
}
