PowerDataset <- read.table("./household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
PowerDataset$Date <- as.Date(PowerDataset$Date,"%d/%m/%Y")
PowerDataset <- subset(PowerDataset,Date == "2007-02-01" | Date == "2007-02-02")

datetime <- as.POSIXct(paste(PowerDataset$Date," ",PowerDataset$Time),format = "%Y-%m-%d %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(datetime,PowerDataset$Sub_metering_1,type = "l", ylab = "Energy sub metering", xlab="")
lines(datetime,PowerDataset$Sub_metering_2,type = "l",col="red")
lines(datetime,PowerDataset$Sub_metering_3,type = "l",col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col = c("black","red","blue"))
dev.off()

