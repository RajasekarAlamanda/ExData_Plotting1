
# Plot 1
library(dplyr)
library(lubridate)
data <- read.table("Rajasekar Alamanda/KC/R/Coursera - Data Science/Exploratory Data Analysis/household_power_consumption.txt", sep = ";", na.strings="?", header = TRUE)
data_2 <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))
str(data_2)  
data_2$Date <- as.Date(data_2$Date, "%d%m%Y")
hist(data_2$Global_active_power, col = "red", main  = "Global Active Power", xlab = "Global Active Power (KiloWatts)" )
