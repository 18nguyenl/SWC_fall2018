# set working dir
setwd(dir = '~/Documents/SWC Data/')

# install ggplot2
install.packages("ggplot2")

# load dependencies
library(ggplot2)

gapminder <- read.table(file = "Data/gapminder.txt", header = T)

# make first ggplot2
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

#### Challenge 1: make a figure of how life expectancy changes over time #####
ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()

####

# let's change the color of our plots
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) + 
    geom_point()
    
# let's change the points into lines
# by means individual lines for each country
ggplot(data = gapminder, aes(by = country, x = year, y = lifeExp, color = continent)) + 
    geom_line()

#let's add points again
ggplot(data = gapminder, aes(by = country, x = year, y = lifeExp, color = continent)) + 
  geom_line(aes(color=continent)) + geom_point()


#### Challenge 2 #####
# Reverse the order of the line/point layers
ggplot(data = gapminder, aes(by = country, x = year, y = lifeExp, color = continent)) + 
  geom_point() + geom_line(aes(color=continent)) 

####

# Add alpha to plot points
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(alpha = 0.5) + scale_x_log10()

# statistics
# lines are "lm" or "linear model"
# alpha shades (transparency) is the standard deviation
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() + scale_x_log10() + geom_smooth(method = "lm", size = 3)

#### Challenge 3: modify the size and color of the poitns of the previous example ####
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(size = .5, color = "#414956") + scale_x_log10() + geom_smooth(method = "lm", size = 3)

### Challenge 3.1: modify the shape ###
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(size = 3, color = "#414956", shape = "square") + scale_x_log10() + geom_smooth(method = "lm", size = 3)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(size = 3, color = "#414956", shape = 11) + scale_x_log10() + geom_smooth(method = "lm", size = 3)
###
####

# Create multiple plots based on the first letter of a country
starts.with <- substr(x = gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with%in% c("A", "Z"),]
ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap( ~ country)

#change text lebels on the plots
ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap(~country) +
  labs(x = "Year", y = "Life Expectancy", title = "Figure 1", color = "continent") +
  theme(axis.text.x=element_blank(), axis.ticks.x = element_blank())

#### Challenge 4 ####
# Make density plot of GDP per capita, filled by continent
ggplot (data = gapminder, aes(x = gdpPercap, fill = continent, color = continent)) + 
  geom_density(alpha = .6, data = gapminder) +
  scale_x_log10()
ggplot (data = gapminder, aes(x = gdpPercap, fill = continent)) + 
  geom_density(alpha = .6, data = gapminder) +
  scale_x_log10() + facet_wrap(~continent)
