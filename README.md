## Introduction

This assignment uses data from the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine Learning Repository</a>, a popular repository for machine learning datasets. In particular, this code analyzes a 2-day period (February 1-2, 2007) from the "Individual household electric power consumption Data Set": <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb].  This data set measures  electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.


The following descriptions of the 9 variables in the dataset are taken from the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Instructions

The code for this assignment consists of 4 files, each of which (when run) generates a 480x480 pixel PNG graph of selected data.  The instructions to generate the PNG files are as follows:

 1. Download the <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> dataset, and extract it to the working folder containing the R files (below).
 2. Execute the plot1.R file to generate a histogram of Global Active Power over time.
	 <img src="https://github.com/kingfisheranalytics/ExData_Plotting1/blob/master/plot1.png">
 3. Execute the plot2.R file to generate a Global Active Power over time line chart.
	 <img src="https://github.com/kingfisheranalytics/ExData_Plotting1/blob/master/plot2.png">
 4. Execute the plot3.R file to generate a layered line chart showing the three Sub Meter activity variables over time.
	 <img src="https://github.com/kingfisheranalytics/ExData_Plotting1/blob/master/plot3.png">
 5. Execute the plot4.R file to generate a 2x2 grid of plots including plot1, plot2, plot3, and Global Reactive Power over time.
	 <img src="https://github.com/kingfisheranalytics/ExData_Plotting1/blob/master/plot4.png">
