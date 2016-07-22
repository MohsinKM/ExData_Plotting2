#path<-"C:~/proj2_draft"
#setwd(path)

if(!"nei" %in% ls()) 
    nei <- readRDS("summarySCC_PM25.rds")
if(!"scc" %in% ls()) 
    scc <- readRDS("Source_Classification_Code.rds")

#How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?

motor_ind <- grep("motor", scc$Short.Name, ignore.case=T)
motor_source<-scc[motor_ind,]
motorData <- nei[nei$SCC %in% motor_source$SCC, ]
motorDataBal<-subset(motorData,fips=="24510")
#baltimore<-subset(nei,fips=="24510")

motor_emit<-aggregate(motorDataBal$Emissions,list(motorDataBal$year),sum)

png(filename="plot5.png", 
    width=600, height=480,
    bg="white", units = "px")
plot(motor_emit,lwd=2,type="l", xlab="Year",ylab="Total pollusion (tons)", col="blue",
     main="Motor Emissions in the US from 1999 until 2008")
dev.off()
