power <- read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")

dataofinterest <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")

timeanddate <- paste(as.Date(dataofinterest$Date, format="%d/%m/%Y"),dataofinterest$Time, sep = " ")

goodtimeanddate <- strptime(timeanddate[1:2880], format="%Y-%m-%d %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")

plot(goodtimeanddate, dataofinterest$Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")

dev.off()