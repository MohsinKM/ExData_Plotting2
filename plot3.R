#path<-"C:~/proj2_draft"
#setwd(path)

if(!"nei" %in% ls()) 
    nei <- readRDS("summarySCC_PM25.rds")
if(!"scc" %in% ls()) 
    scc <- readRDS("Source_Classification_Code.rds")

#Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) 
#variable, which of these four sources have seen decreases in emissions from 1999-2008 
#for Baltimore City? Which have seen increases in emissions from 1999-2008? 
#Use the ggplot2 plotting system to make a plot answer this question.

library(ggplot2)

baltimore<-subset(nei,fips=="24510")
tot_emit<- aggregate(Emissions~year+type,baltimore , sum)

png(filename="plot3.png", 
    width=600, height=480,
    bg="white", units = "px")
ggplot(tot_emit, aes(x=factor(year), y=Emissions, fill=type)) +
    geom_bar(stat="identity") +
    facet_grid(. ~ type) +
    xlab("year") +
    ylab(expression("Total Emission")) +
    ggtitle(expression("PM"[2.5]*" emissions in Baltimore City by various source types "))
dev.off()
