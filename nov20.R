##get rid of redundant columns
who3 %>% count(new)

who4 <- who3 %>%
  select (-new, -iso2, -iso3)

##break apart after the first character
who5 <- who4 %>%
  separate(sexage, c("sex", "age"), sep = 1)

who5 <- 
  
##joins
  
##keys
  
  library(nycflights13)

planes <- nycflights13::planes
flights <- nycflights13::flights
weather <- nycflights13::weather
airlines <- nycflights13::airlines
airports <- nycflights13::airports

##keys are unique, the thing that correspons to "something in the other one"
#carrier is the key that links the airlines dataset to flights 

#inner join
#left join
#right join
#full join

#how to tell if keys are unique or not
library(tidyverse)
planes %>% count(tailnum) %>% filter(n >1)
airports %>% count(name) %>% filter(n > 1)
airports %>% count(faa) %>% filter(n > 1)

#mutational joins
flights2 <- flights %>%
  select(year:day, hour, origin, dest, tailnum, carrier)

flights2

flights3 <- flights2 %>% select(-origin, -dest)

flights3 %>% 
  left_join(airlines, by = "carrier")

##Challenge
#add a new column to flights that adds the latitude of the desination airport

head(nycflights13$airports)

flights %>%
  left_join(airports, by = "airports$lat")

airports %>% 
  left_join(airlines, by = "carrier")
#labels are different!
#column names have to match

airports_mod <- airports 
colnames(airports_mod)[1] <- "dest"

flights2 %>% left_join(airports_mod, by = "dest") %>% select(year, month, day, tailnum, dest, lat)

########################

wood <- read_csv("Datasets/woodiness.csv")
tax <- read_csv("Datasets/plant_taxonomy.csv")

head(wood)
head(tax)

