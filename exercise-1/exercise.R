# Exercise 1: Data Frame Practice

# Install devtools package: allows installations from GitHub
#install.packages('devtools')

# Install "fueleconomy" package from GitHub
#devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library('fueleconomy')

# You should have have access to the `vehicles` data.frame
#View(vehicles)
my.data <- data.frame(vehicles)
# Create a data.frame of vehicles from 1997
my.1997 <- my.data[my.data$year == 1997,]

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(my.1997$year)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
my.wheelmi <- my.data[my.data$drive == '2-Wheel Drive' & my.data$cty > 20,]

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
my.wheelmi <- my.wheelmi$id[my.wheelmi$hwy == min(my.wheelmi$hwy)]

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
my.eff <- function(my.year, my.make) {
  my.in <- my.data[my.data$year == my.year & my.data$make == my.make,]
  my.ans <- my.in[my.in$hwy == max(my.in$hw
                                   y),]
  return(my.ans)
}

# What was the most efficient honda model of 1995?
my.test <- my.eff('1995','honda')

