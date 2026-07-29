#Data Wrangling
library(usethis)
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

flights |> 
  filter(month == 1 | day == 1)
# Flights that departed in January or February
flights |> 
  filter(month == 1 | month == 2)
# Flights that departed in January and February
flights |> 
  filter(month == 1 & month == 2)
# A shorter way to select flights that departed in January or February
flights |> 
  filter(month %in% c(1, 2)) -> C

flights |> 
  filter(month %in% 1) -> A

flights |> 
  filter(month %in% 2) -> B

C == A+B
C
dim(A)
dim(B)
dim(C)

#arrange - works on columns
flights |> 
  arrange(year, month, day, dep_time)
#You can use desc() on a column inside of arrange()
flights |> 
  arrange(desc(dep_delay))

#distinct - works on rows
# Remove duplicate rows, if any
flights |> 
  distinct()
# Find all unique origin and destination pairs
flights |> 
  distinct(origin, dest)
#if you want to keep the other columns when filtering for unique rows
flights |> 
  distinct(origin, dest, .keep_all = TRUE)
flights |>
  count(origin, dest, sort = TRUE)

#mutate
flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60
  )

flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .before = 1
  )

flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .after = day
  )

flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    hours = air_time / 60,
    gain_per_hour = gain / hours,
    .keep = "used"
  )

#select
