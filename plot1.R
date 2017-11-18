PowerDataset <- read.table("./household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
PowerDataset$Date <- as.Date(PowerDataset$Date,"%d/%m/%Y")
PowerDataset <- subset(PowerDataset,Date == "2007-02-01" | Date == "2007-02-02")

png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
hist(PowerDataset$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",col = "red")
dev.off()
