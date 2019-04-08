
# Plot 2
library(dplyr)
library(lubridate)
data <- read.table("Rajasekar Alamanda/KC/R/Coursera - Data Science/Exploratory Data Analysis/household_power_consumption.txt", sep = ";", na.strings="?", header = TRUE)
data_2 <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))
data_2$Date <- as.Date(data_2$Date, "%d%m%Y")
data_2$Datetime <- (paste(data_2$Date, data_2$Time))
data_2$Datetime <- as.POSIXct(datetime)
data_2$Day <- weekdays(as.Date(data_2$Date))
str(data_2)
plot(data_2$Global_active_power~data_2$Datetime, type = "l", xlab = "", ylab = "Global Active Power (KiloWatts)" )     
