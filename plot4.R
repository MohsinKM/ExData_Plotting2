#path<-"C:~/proj2_draft"
#setwd(path)

if(!"nei" %in% ls()) 
    nei <- readRDS("summarySCC_PM25.rds")
if(!"scc" %in% ls()) 
    scc <- readRDS("Source_Classification_Code.rds")

#coal

coal_ind <- grep("coal", scc$Short.Name, ignore.case=T)
coal_source<-scc[coal_ind,]
coalData <- nei[nei$SCC %in% coal_source$SCC, ]
coal_emit<-aggregate(coalData$Emissions,list(coalData$year),sum)

png(filename="plot4.png", 
    width=600, height=480,
    bg="white", units = "px")
plot(coal_emit,lwd=2,type="l", xlab="Year",ylab="Total pollusion (tons)", col="blue",
     main="Coal Emissions in the US from 1999 until 2008")
dev.off()

