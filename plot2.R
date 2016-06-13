#Draw a Basic Plot with required X and Y Labels. Once the plot is drawn with the required fields, close the graphics device with dev.off()  
plot2 <- function()
{
     result <- downloadData() 
     dF<- loadData()

    png("plot2.png", width=400, height=400)
    
    plot(dF$Time, dF$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    
    dev.off()

}

