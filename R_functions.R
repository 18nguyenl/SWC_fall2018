# set working directory
setwd("~/Documents/SWC Data/")

fahr_to_Kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  kelvin
}

fahr_to_Kelvin(32)

print(paste("Boiling point of water:", fahr_to_Kelvin(212)))

kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15  
  celsius
}

print(paste("absolute zero in celsius:", kelvin_to_celsius(0)))

fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_Kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  result
}

print(paste("Freezing point of water in celsius", fahr_to_celsius(32)))

#### Challenge 1
fence <- function(original, wrapper) {
  result <- paste0(wrapper, original, wrapper)
  return(result)
}

print(paste(fence("one", "two")))

####
