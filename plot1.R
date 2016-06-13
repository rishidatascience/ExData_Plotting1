### Open a png file and write a Histogram Graph with the required X and Y labels as requested. Once the graph is plotted, close the Graphics device. 
plot1 <- function(data=NULL) {
    
    result <- downloadData() 
    dF<- loadData()
    
    png("plot1.png", width=400, height=400)
    
    hist(dF$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power", col="red")
    dev.off()
}







 