barplot(c(sum(Dates$'1999'$Emissions),sum(Dates$'2002'$Emissions),sum(Dates$'2005'$Emissions),sum(Dates$'2008'$Emissions)) , names.arg = c(1999,2002,2005,2008), ylab = 'Total Emissions' , xlab='Year' , main="Total PM2.5 emissions ")
dev.copy( png,"plot1.png",width = 480, height = 480, units = "px",)
dev.off()
