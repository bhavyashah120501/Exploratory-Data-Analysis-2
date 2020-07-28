a <- subset(Dates$"1999" , fips == "24510")
b <- subset(Dates$"2002" , fips == "24510")
c <- subset(Dates$"2005" , fips == "24510")
d <- subset(Dates$"2008" , fips == "24510")

barplot(c(sum(a$Emissions),sum(b$Emissions),sum(c$Emissions),sum(d$Emissions)) , names.arg = c(1999,2002,2005,2008), ylab = 'Total Emissions' , xlab='Year' , main="Total PM2.5 emissions in  Baltimore City")
dev.copy( png,"plot2.png",width = 480, height = 480, units = "px",)
dev.off()
