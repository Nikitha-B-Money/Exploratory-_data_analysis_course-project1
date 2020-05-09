dataFile <- "C:/Users/Nikky/Desktop/Data Science/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalactivepower <- as.numeric(mydata$Global_active_power)
days <-strptime(paste(mydata$Date,mydata$Time,sep=" ") ,"%d/%m/%Y %H:%M:%S")
png("plot2.png" ,width =480,height=480)
plot(days,globalactivepower,type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()
