library(ggplot2)

a <- with(subset(NEI,fips == "24510"),aggregate(Emissions ~ year + type , FUN = sum))
g <- ggplot(a , aes( a$year,a$Emissions ))

g <- g + geom_line(aes(color = type)) + labs(x='Year' , y='Emissions' , title='Emission trends in Baltimore City')
print(g)
dev.copy( png,"plot3.png",width = 480, height = 480, units = "px",)
dev.off()

