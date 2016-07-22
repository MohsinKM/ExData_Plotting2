## Introduction

This is second class assignment for exploratory data analysis.
Problem defination: https://www.coursera.org/learn/exploratory-data-analysis/peer/b5Ecl/course-project-2

The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.

##Description of data
Data can be obtained in the same page of problem

Problem defination: https://www.coursera.org/learn/exploratory-data-analysis/peer/b5Ecl/course-project-2

*fips: A five-digit number (represented as a string) indicating the U.S. county
*SCC: The name of the source as indicated by a digit string (see source code classification table)
*Pollutant: A string indicating the pollutant
*Emissions: Amount of PM2.5 emitted, in tons
*type: The type of source (point, non-point, on-road, or non-road)
*year: The year of emissions recorded

## Questions

You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

*Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
*Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.
*Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
*Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
*How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
*Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

## Making Plots

Make sure data is in same folder along with all these codes. Use any of plotX.R codes where X=1,2,3 and 4. Also note that png files are given. Given that data and all the codes are in same folder, to produce plot1.png it is enough just to run plot1.R. 

##Thanks 

