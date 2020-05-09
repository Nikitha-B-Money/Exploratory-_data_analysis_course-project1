dataFile <- "C:/Users/Nikky/Desktop/Data Science/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepower <- as.numeric(mydata$Global_active_power)
png("plot1.png",width=480 ,height = 480)
hist(globalactivepower,col = "red" ,xlab = "Global Active Power(kilowatts)",main="Global Active Power")
dev.off()