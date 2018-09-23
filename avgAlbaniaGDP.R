# 1st Script

# location 
filename <- 'Data/gapminder.txt'

# read the data file
gapminder <- read.table(filename, header = TRUE)

# select the rows where the country Albania and store it
# this inputs the rows with TRUE / FALSE values to select which rows to display
albaniaData <- gapminder[gapminder$country=="Albania",]
View(albaniaData)


# select the column for GDP from albaniaData
albaniaGdp <- albaniaData$gdpPercap

# compute the average GDP for the coutnry over the years
albaniaAverageGdp <- mean(albaniaGdp)
print(paste("The average gdp for Albania is", albaniaAverageGdp))
