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
## Plot 3
png("plot3.png", width = 480, height = 480)
linenames=colnames(enviro)[7:9]
linecols<-c("black", "red", "blue" )
yrange=range(enviro[7:9])

ylabel<-"Energy sub metering"
for (i in 1:3)
{
  plot(enviro$Fulldate, enviro[, (i+6),], type="l" ,  ylim=yrange, col=linecols[i], ylab=ylabel, xlab="")
  par(new=TRUE)
  if (i>=1) {ylabel <-""}
}

legend("topright", legend=linenames, col=linecols, lty = c(1,1,1))
par(new=FALSE)
dev.off()
