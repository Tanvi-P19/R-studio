#Data Wrangling
library(usethis)
use_git()
use_github()
library(nycflights13)
library(tidyverse)
install.packages("nycflights13")
flights
glimpse(flights)
flights |> 
  filter(dep_delay > 120)
# Flights that departed on January 1
flights |> 
  filter(month == 1 & day == 1)
# Flights that departed in January or February
flights |> 
  filter(month == 1 | month == 2)
# A shorter way to select flights that departed in January or February
flights |> 
  filter(month %in% c(1, 2))

flights |> 
  filter(month == 2 & day == 1)
flights |> 
  filter(month == 1 & month == 2)
