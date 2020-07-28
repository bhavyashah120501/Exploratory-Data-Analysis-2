index <- grep("Motor Vehicles " , SCC$Short.Name)

a <- subset(NEI , index & (fips == "24510" | fips == "06037"))

b <- with(a,aggregate(Emissions ~ year + fips, FUN=sum))

g <- ggplot(b , aes(year , Emissions)) + geom_line(aes(col=fips))+facet_grid(cols=fips) + labs(x='Year' , y='Emission' , title = 'Motor Vehicle Emission in Baltimore And Los Angeles')

print(g)


dev.copy( png,"plot6.png",width = 480, height = 480, units = "px",)
dev.off()