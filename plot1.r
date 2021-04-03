first <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?")

data1 <- subset(first, Date %in% c("1/2/2007","2/2/2007"))

data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")


hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (KW)", ylab="Frequency", col="red")

dev.copy(png, file="plot1.png", height=480, width=480)
