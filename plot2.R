#path<-"C:~/proj2_draft"
#setwd(path)

if(!"nei" %in% ls()) 
    nei <- readRDS("summarySCC_PM25.rds")
if(!"scc" %in% ls()) 
    scc <- readRDS("Source_Classification_Code.rds")

#Have total emissions from PM2.5 decreased in the Baltimore City, 
#Maryland (fips == "24510") from 1999 to 2008? Use the base plotting 
#system to make a plot answering this question.

# all pollutant is same here in nei
baltimore<-subset(nei,fips=="24510")
tot_emit<- aggregate(baltimore$Emissions, list(baltimore$year), sum)

png(filename="plot2.png", 
    width=600, height=480,
    bg="white", units = "px")
plot(tot_emit,lwd=2,type="l", xlab="Year",ylab="Total pollusion (tons)", col="blue",
     main="Total Emissions in Baltimore from 1999 until 2008")
dev.off()
