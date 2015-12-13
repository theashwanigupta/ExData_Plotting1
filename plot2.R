# First Plot
source('Plot1Data_Load.R')
png(file = "plot2.png")
plot(mynewdata$datetime,mynewdata$Global_active_power,xlab = "",ylab = "Global Active Power (kilowatts)", type = 'l')
dev.off()
