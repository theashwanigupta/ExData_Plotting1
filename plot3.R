source('Plot1Data_Load.R')
png(file = "plot3.png")

plot(mynewdata$datetime,mynewdata$Sub_metering_1,xlab = "",
     ylab = "Energy sub mentering",col = "Black",type = 'l')

lines(mynewdata$datetime,mynewdata$Sub_metering_2,col = "Red",type = 'l')

lines(mynewdata$datetime,mynewdata$Sub_metering_3,col = "Blue",type = 'l')

legend("topright",col = c('Black','Red','Blue'),legend = c(
        "Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd =1
)
dev.off()