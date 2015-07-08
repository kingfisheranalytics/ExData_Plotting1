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
## Plot 1
png("plot1.png", width = 480, height = 480)
hist(enviro$Global_active_power, col="red", ylab="Frequency", xlab="Global Active Power (kilowatts)")
dev.off()
