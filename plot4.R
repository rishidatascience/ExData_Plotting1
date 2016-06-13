### Draw 4 Graphs using Plot Function.  Set a 2x2 matrix and then add graph to each row/column. Draw a Legend Box giving explanation of each graph. 
## Call Device Off to close once writen to a Graph. 
plot4 <- function(data=NULL) {

     result <- downloadData() 
     dF<- loadData()

    png("plot4.png", width=400, height=400)

    par(mfrow=c(2,2))
    
    plot(dF$Time, dF$Global_active_power, xlab="", ylab="Global Active Power", type="l")
    plot(dF$Time, dF$Voltage, xlab="datetime", ylab="Voltage", type="l")
    plot(dF$Time, dF$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l", col="black")
    lines(dF$Time, dF$Sub_metering_2, col="red")
    lines(dF$Time, dF$Sub_metering_3, col="blue")
    legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,box.lwd=0, cex=0.5)
    plot(dF$Time, dF$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
    lines(dF$Time, dF$Global_reactive_power)
    
    dev.off()

}
