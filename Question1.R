# source('~/R/EDAproject2/ReadDATA.R')
# Have total emissions from PM2.5 decreased in the United States 
# from 1999 to 2008? Using the base plotting system, make a plot 
# showing the total PM2.5 emission from all sources for each of 
# the years 1999, 2002, 2005, and 2008.



# year 1999, 2002, 2005, 2008
library(dplyr)
y99 <- filter(NEI, year=="1999")
y02 <- filter(NEI, year=="2002")
y05 <- filter(NEI, year=="2005")
y08 <- filter(NEI, year=="2008")


# total PM2.5 emission
total_emission99 <- sum(y99$Emissions, na.rm=TRUE)
total_emission02 <- sum(y02$Emissions, na.rm=TRUE)
total_emission05 <- sum(y05$Emissions, na.rm=TRUE)
total_emission08 <- sum(y08$Emissions, na.rm=TRUE)

p1 <- cbind.data.frame(c(total_emission99,total_emission02,total_emission05,total_emission99),
                       c("1999","2002","2005","2008"))
names(p1) <- c("Total PM 2.5 Emission", "year")
