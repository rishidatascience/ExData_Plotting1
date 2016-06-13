### Draw a plot3 with basic Plot Function. Give a Color code to the Sub_metering_2 and Sub_metering_3 variables. 
### Also draw a small legend box on TopRight helping the user see different colors associated with different data columns.
## close the device.

plot3 <- function(data=NULL) {

     result <- downloadData() 
     dF<- loadData()

    png("plot3.png", width=400, height=400)
    plot(dF$Time, dF$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering") 
    lines(dF$Time, dF$Sub_metering_2, col="red")
    lines(dF$Time, dF$Sub_metering_3, col="blue")
    legend("topright", col=c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

    dev.off()
}

