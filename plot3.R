power <- read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")

dataofinterest <- subset(power, Date == "1/2/2007" | Date == "2/2/2007")

timeanddate <- paste(as.Date(dataofinterest$Date, format="%d/%m/%Y"),dataofinterest$Time, sep = " ")

goodtimeanddate <- strptime(timeanddate[1:2880], format="%Y-%m-%d %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")

plot(goodtimeanddate, dataofinterest$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering", col = "black")

lines(goodtimeanddate, dataofinterest$Sub_metering_2, type = "l", col = "red")

lines(goodtimeanddate, dataofinterest$Sub_metering_3, type = "l", col = "blue")

legend("topright", lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"))

dev.off()