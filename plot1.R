power <- read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")

dataofinterest <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")

png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")

hist(dataofinterest$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")

dev.off()
