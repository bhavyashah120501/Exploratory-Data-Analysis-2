index <- grepl("[Cc]oal" , SCC$EI.Sector , fixed=FALSE)
a <- subset(NEI , index)

b <- with(a,aggregate(Emissions ~ year , FUN=sum))
g <- ggplot(b ,aes(as.factor(year),Emissions)) + geom_bar(stat='identity') + labs(x = 'Years' , y= 'Emissions' , title="Coal Combustion Emission")
print(g)
dev.copy( png,"plot4.png",width = 480, height = 480, units = "px",)
dev.off()
