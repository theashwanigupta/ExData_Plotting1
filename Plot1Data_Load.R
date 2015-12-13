# Code to load the source file.

mydata <- read.table("./data/household_power_consumption.txt",
                     header = TRUE,sep = ";",colClasses = 
                             c("character","character",rep("numeric",7)),
                     na.strings = "?")

#mydata$Date <- as.Date(mydata$Date)

mynewdata <- mydata[(mydata$Date %in% c('1/2/2007','2/2/2007')), ]
mynewdata$datetime <- strptime(paste(mynewdata$Date,mynewdata$Time),
                                format = "%d/%m/%Y %H:%M:%S")
