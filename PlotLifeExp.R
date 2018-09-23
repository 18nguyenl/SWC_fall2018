# PlotLifeExp.R script

myDataFull <- read.table("Data/gapminder.txt", header=TRUE)

# Subset Canada only
Canada <- myDataFull[myDataFull$country=="Canada",]

png("Canada.png")

#Plot
plot(Canada$year, Canada$lifeExp, col="blue", type="l")

dev.off()