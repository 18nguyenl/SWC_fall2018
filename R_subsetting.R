##Data Frame
# really similar to excel layout
# most important data structure for data analysis and etc.
menuItems <- c("chicken", "soup", "salad", "tea")
menuType <- factor(c("solid", "liquid", "solid", "liquid"))
menuCost <- c(4.99, 2.99, 3.29, 1.89)
myOrder_df <- data.frame(menuItems, menuType, menuCost)
myOrder_df
dim(myOrder_df)
str(myOrder_df)

## SUBSETTING
## take a subset of the data frame for closer analysis
## Type 1: Positional Index:
v <- c(1:10)
v[2]
v[c(3:6)]
v[-c(3:6)]
v[3:6]


myOrder_df[1]

# This is a subsetted value
myOrder_df[[1]]
typeof(ex[1])
typeof(myOrder_df[[1]])
str(myOrder_df[1])


## data_frame[row,column]
myOrder_df[1:3,]


## Subset by Name:

myOrder_df$menuItems

## Subset by logical vectors:

##### 
# > - greater than
# < - less than
# == - e qual to
# >= - greater than or equal to
# <= - less than or equal to

v <- c(5,1,3,4,5)
v[v==5]
v==5

df1 <- myOrder_df[myOrder_df$menuType=="solid",]
myOrder_df
df1

df2 <- myOrder_df[myOrder_df$menuCost>3,]
df2

df3 <- myOrder_df[myOrder_df$menuType=="solid"]
menuType=="solid"
# if the individual columns were TRUE FALSE TRUE FALSE, then only the TRUE's would be displayed
df3

## GapMinder Dataset

myData <- read.table("Data/gapminder.txt")


## For CSV files read.csv()

dim(myData)
str(myData)

#### Challenge 
# 1
str(myData)
# 2

typeof(myData[1,1])

# 3
## Select any row and print the 3rd and 5th column
myData[,c(3,5)]
unique(myData$V1)
unique(myData$V2)
unique(myData$V3)

## select any rows with "Sweden" in V1
myData[myData$V1=="Sweden",]
## select any rows with "Sweden" in V1 and print out the data in n column
myData[myData$V1=="Sweden", 1]
myData[myData$V1=="Sweden", 2]
myData[myData$V1=="Sweden", 3]
myData[as.numeric(myData$V4)<70,]
as.numeric(myData$V4)

myData$V7 <- as.numeric(levels(myData$V5)[myData$V5]) / (1*10^6)
