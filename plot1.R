#path<-"C:~/proj2_draft"
#setwd(path)

if(!"nei" %in% ls()) 
    nei <- readRDS("summarySCC_PM25.rds")
if(!"scc" %in% ls()) 
    scc <- readRDS("Source_Classification_Code.rds")

#Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
#Using the base plotting system, make a plot showing the total PM2.5 emission from 
#all sources for each of the years 1999, 2002, 2005, and 2008.

# all pollutant is same here in nei

tot_emit<- aggregate(nei$Emissions, list(nei$year), sum)

png(filename="plot1.png", 
    width=600, height=480,
    bg="white", units = "px")
plot(tot_emit,lwd=2,type="l", xlab="Year",ylab="Total pollusion (tons)", col="blue",
     main="Total Emissions in the US from 1999 until 2008")
dev.off()
