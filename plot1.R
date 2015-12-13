# First Plot
source('Plot1Data_Load.R')
png(file = "plot1.png")
hist(mynewdata$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "Red")
title(main = "Global Active Power")
dev.off()