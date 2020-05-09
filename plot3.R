dataFile <- "C:/Users/Nikky/Desktop/Data Science/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
mydata<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalactivepower <- as.numeric(mydata$Global_active_power)
submetering1<- as.numeric(mydata$Sub_metering_1)
submetering2 <- as.numeric(mydata$Sub_metering_2)
submetering3 <- as.numeric(mydata$Sub_metering_3)
days <-strptime(paste(mydata$Date,mydata$Time,sep=" ") ,"%d/%m/%Y %H:%M:%S")
png("plot3.png",width=480,height=480)
plot(days,submetering1,type="l",col="darkblue",xlab="",ylab="Energy sub metering") 
lines(days,submetering2,type="l",col="red")
lines(days,submetering3,type="l",col="blue")
legend("topright",legend=c("sub_metering_1","sub_metering_2","sub_metering_3"),lty=1,lwd=2,col=c("darkblue","red","blue"))
dev.off()