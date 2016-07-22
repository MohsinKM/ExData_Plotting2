#path<-"C:~/proj2_draft"
#setwd(path)

if(!"nei" %in% ls()) 
    nei <- readRDS("summarySCC_PM25.rds")
if(!"scc" %in% ls()) 
    scc <- readRDS("Source_Classification_Code.rds")

#Compare emissions from motor vehicle sources in Baltimore City with emissions 
#from motor vehicle sources in Los Angeles County, California (fips == "06037"). 
#Which city has seen greater changes over time in motor vehicle emissions?

motor_ind <- grep("motor", scc$Short.Name, ignore.case=T)
motor_source<-scc[motor_ind,]
motorData <- nei[nei$SCC %in% motor_source$SCC, ]

motorDataBal<-subset(motorData,fips=="24510")
motorDataLA<-subset(motorData,fips== "06037")


motor_emit_bal<-aggregate(motorDataBal$Emissions,list(motorDataBal$year),sum)
motor_emit_la<-aggregate(motorDataLA$Emissions,list(motorDataLA$year),sum)

png(filename="plot6.png", 
    width=600, height=480,
    bg="white", units = "px")
plot(motor_emit_bal,ylim=range(c(motor_emit_bal[,2],motor_emit_la[,2])),lwd=2,type="l", 
     xlab="Year",ylab="Total pollusion (tons)", col="blue",
     main="Motor Emissions in two US cities from 1999 until 2008")
par(new = TRUE)
plot(motor_emit_la,ylim=range(c(motor_emit_bal[,2],motor_emit_la[,2])),lwd=2,type="l", 
                               xlab="Year",ylab="Total pollusion (tons)", col="red",
     main="Motor Emissions in two US cities from 1999 until 2008")
legend("topright", pch = 1, col = c("blue", "red"), legend = c("Baltimore", "LA"))

dev.off()
