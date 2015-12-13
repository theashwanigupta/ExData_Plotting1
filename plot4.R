source('Plot1Data_Load.R')
png(file = "plot4.png")

par(mfcol=c(2,2))
plot(mynewdata$datetime,mynewdata$Global_active_power,xlab = "",ylab = "Global Active Power", type = 'l')

plot(mynewdata$datetime,mynewdata$Sub_metering_1,xlab = "",
     ylab = "Energy sub mentering",col = "Black",type = 'l')

lines(mynewdata$datetime,mynewdata$Sub_metering_2,col = "Red",type = 'l')

lines(mynewdata$datetime,mynewdata$Sub_metering_3,col = "Blue",type = 'l')

legend("topright",col = c('Black','Red','Blue'),legend = c(
        "Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd =1,bty = "n"
)

plot(mynewdata$datetime,mynewdata$Voltage,xlab = "Voltage",ylab = "datetime", type = 'l')

plot(mynewdata$datetime,mynewdata$Global_reactive_power,xlab = "Global reactive power",ylab = "datetime", type = 'l')

dev.off()