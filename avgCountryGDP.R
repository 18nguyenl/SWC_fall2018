# 2nd Script
# This script computers teh average GDP for a country using gapminder data

# clear old variables
rm(list = ls())

# location 
filename <- 'Data/gapminder.txt'

# read the data file
gapminder <- read.table(filename, header = TRUE)

getAverageGdpPerCapita <- function(country) {
  # select country where you want to parse out GDP
  selectedCountryData <- gapminder[gapminder$country == country, "gdpPercap"]
  mean(selectedCountryData)
}

gdpUSA <- getAverageGdpPerCapita("United_States")
gdpCanada <- getAverageGdpPerCapita("Canada")
gdpMexico <- getAverageGdpPerCapita("Mexico")

print(paste('GDP per cap of USA is', gdpUSA))
print(paste('GDP per cap of Canada is', gdpCanada))
print(paste('GDP per cap of Mexico is', gdpMexico))
