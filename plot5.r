index <- grep("Motor Vehicles " , SCC$Short.Name)

a <- subset(NEI , index & fips == "24510")

b <- with(a,aggregate(Emissions ~ year, FUN=sum))

g <- ggplot(b , aes(as.factor(year) , Emissions)) + geom_bar(stat = "identity") + labs(x='Year' , y='Emission' , title = 'Motor Vehicle Emission in Baltimore')

print(g)

dev.copy( png,"plot5.png",width = 480, height = 480, units = "px",)
dev.off()
