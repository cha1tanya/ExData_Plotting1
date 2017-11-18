PowerDataset <- read.table("./household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
PowerDataset$Date <- as.Date(PowerDataset$Date,"%d/%m/%Y")
PowerDataset <- subset(PowerDataset,Date == "2007-02-01" | Date == "2007-02-02")

datetime <- as.POSIXct(paste(PowerDataset$Date," ",PowerDataset$Time),format = "%Y-%m-%d %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(datetime,PowerDataset$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()

