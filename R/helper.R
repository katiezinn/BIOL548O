##some helper functions

#all lowercase
fitler_frame()
calculate_likelihood()
verb_object()
verb_noun()

##convert temp

tmp <- 14
convert_celsiuskelvin <- function(){
  tmp + 270
}

convert_tempunit <- function(temp, in_unit = "celsius", out_unit = "kelvin"){
  ##use conditional statements
  if(in_unit == "celsius" && out_unit == "kevin"){
    new_temp <- temp + 270
  } else if (in_unit == "celsius" && out_unit == "farenheit"){
new_temp <- (temp * 9/5) + 32
} else {
  return("units did not match")
} 
  new_temp
}

library(tidyverse)
my_tibble <- tibble(cow=c(1, 3, 4), dog=c(4, 3, 10), cat=c(11, 15, 2))

filter(my_tibble, dog > 8)

break_dplyr <- function(df, col_name){
  col_name <- enquo(col_name)
  filter(df, !!col_name > 8)
}

#when you do something across many different datasets

my_dat <- c(3, 4, 5, 6, 5)
my_names <- c("cow", "dog", "cat")

##fastest way is "vector" calculations
my_dat * 2

paste("bad", my_names)

## way 2 for loop
## Ideally we define an output object of appropriate length
my_result <- vector(length=5)

for (i in seq_along(my_dat)){
  my_result[i] <- my_dat[i] *2
}

my_result

for (i in 1:length(my_dat)){
  my_result[i] <- my_dat[i] * 2
}

# do not do this
my_result <- vector(length=5)
for (i in my_dat){
  my_result[i] <- i * 2
}

#adding as you go along
#this isn't the best way to write code because everytime you run the iteration you 
#have to re-copy the thing onto your computer over and over, it takes up a lot of space and 
#slow down R

my_result <- 0

for (i in seq_along(my_dat)){
  my_result <- c(my_result, my_dat[i] * 2)
}