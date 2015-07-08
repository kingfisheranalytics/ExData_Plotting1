################################################################################
################################################################################
## ExData_Plotting1 Assignment 
## Guy Hagen 7/8/2015
################################################################################
################################################################################


################################################################################
################################################################################
## Import Household Power Consumption data
enviro <- read.csv("household_power_consumption.txt", sep=";", na.strings=c("?"))

################################################################################
## Per assignment instructions, we will only be using data from
## 2007-02-01 and 2007-02-02; let's discard the rest.

enviro <- enviro[enviro$Date == "1/2/2007" | enviro$Date=="2/2/2007", ]
enviro$Fulldate <- as.POSIXct(paste(enviro$Date, enviro$Time), format="%d/%m/%Y %H:%M:%S")
enviro$Date <-as.Date(enviro$Date)
enviro$Time <-strptime(enviro$Time,"%H:%M:%S")


################################################################################
################################################################################
## Plot 4 - a 2x2 grid of plots showing various measurements over a 2 day period
################################################################################

################################################################################
## Initialize grid and display device for multiple plots
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

################################################################################
## Plot 1 Global Active Power over datetime
plot(enviro$Fulldate, enviro$Global_active_power, type="l", ylab="Global Active Power", xlab="")


################################################################################
## Plot 2 Voltage over datetime
plot(enviro$Fulldate, enviro$Voltage, type="l", ylab="Voltage", xlab="datetime")

################################################################################
## Plot 3 sub-metering variables over datetime
linenames=colnames(enviro)[7:9]
linecols<-c("black", "red", "blue" )
yrange=range(enviro[7:9])
#plot(0,0, ylim=yrange, type="l",ylab="Energy sub metering", xlab="")
ylabel<-"Energy sub metering"

for (i in 1:3)
{
  plot(enviro$Fulldate, enviro[, (i+6),],  type="l", ylim=yrange, col=linecols[i], ylab=ylabel, xlab="")
  par(new=TRUE)
  if (i>=1) {ylabel <-""}
}

legend("topright", legend=linenames, col=linecols, lty = c(1,1,1), bty="n")



################################################################################
## Plot Global Reactive Power over datetime
plot(enviro$Fulldate, enviro$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
par(new=FALSE)
dev.off()