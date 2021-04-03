first <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?")

data1 <- subset(first, Date %in% c("1/2/2007","2/2/2007"))

data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")

dt <- paste(as.Date(data1$Date), data1$Time)

with(data1, {
  plot(Sub_metering_1~dt, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~dt,col='Red')
  lines(Sub_metering_3~dt,col='Blue')
})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)