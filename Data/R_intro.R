getwd()

#*******challenge 2.1**********
mass <- 47.5
age <- 122
height <- 150

mass <- mass * 2.3
age <- age - 20
height <- height + 20

#additional packages
install.packages("knitr")
library(knitr)

####Data types and Data Structures

#Single-element data structures: smallest units in r
age <- 45

#useful functions to know more about the object
length(age)
str(age)

score <- 79
is.integer(score)

typeof(score)
#nested function
typeof(is.integer(score))

####Challenge 2.2
score <- 79
#find the output of
is.logical(is.numeric(typeof(is.integer(score))))
step1 <- is.integer(score)
step1
step2 <- typeof(step1)
step2
step3 <- is.numeric(step2)
step3
step4 <- is.logical(step3)
step4

age
typeof(age)
age <- 40L #age is now an integer literal
typeof(age)

#Data structure with multiple elements

#vector: collection of elements of the same data type
#how to create a vector?
#c(): concatanate function

v <- c(1,2,3,45)
v <- c(1:3, 45)
v

#examine the object
length(v)
str(v)

#view parts of data/vector
head(v, n=2)
tail(v, n=3)


#manipulate
v1 <- 2*v
v1

#add a vector
#let's create v2 and then add v2 to v1
v2 <- c(1:5)
v2
v3 <- v1 + v2
v3

#character vector
v4 <- c("Jane", "John", "Farah")
v4
typeof(v4)
#change data type
v3 <- as.character(v3)
v3
typeof(v3)
str(v3)

#Matrices, factors, list*** challenge
#Matrices: 2D vectors
#to create matrices we use the matrix function
m <- matrix(c(1:18), 3, 6)
m
#rows column
dim(m)

#factor
#factors are special vectors used to represent categorial data
#to create a fator, we use a factor function
continent <- factor(c("Asia", "America", "Europe"))
continent
str(continent)

#Lists: generic vectors = collection of elements with different data types
#example: using numerical and character types in 1 list
l <- list("Afghanistan", "Albania", 1952, 876897)
l

typeof(l)
str(l)
#####Challenge2.3#####
items <- c("chicken, soup, salad, tea")
types <- factor(c("solid", "liquid", "solid", "liquid"))
cost <- c(4.99, 2.99, 3.29)
myorder <- list(items, types, cost)
myorder
