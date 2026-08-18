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


#names - You can name a vector in three ways:
#When creating it:
x <- c(a = 1, b = 2, c = 3)
#By modifying an existing vector in place:
x <- 1:3; names(x) <- c("a","b", "c")
#By creating a modified copy of a vector:
x <- setNames(1:3, c("a","b", "c"))

#Factors
x <- factor(c("a", "b", "b", "a"))
x
class(x)
levels(x)

sex_char <- c("m", "m", "m")
sex_factor <- factor(sex_char, levels = c("m", "f"))
table(sex_char)
table(sex_factor)

z <- read.csv(text = "value\n12\n1\n.\n9")
typeof(z$value)
z

z <- read.csv(text = "value\n12\n1\n.\n9", na.strings=".")
typeof(z$value)
z

#Matrices and arrays
# Two scalar arguments to specify rows and columns
a <- matrix(1:6, ncol = 3, nrow = 2)
# One vector argument to describe all dimensions
b <- array(1:12, c(2, 3, 2))

c <- 1:6
dim(c) <- c(3, 2)
c

dim(c) <- c(2, 3)
c

length(a)
nrow(a)
ncol(a)
rownames(a) <- c("A", "B")
colnames(a) <- c("a", "b", "c")
a

dimnames(b) <- list(c("one", "two"), c("a", "b", "c"), c("A", "B"))
b

l <- list(1:3, "a", TRUE, 1.0)
dim(l) <- c(2, 2)
l

df <- data.frame(x = 1:3, y = c("a", "b", "c"))
str(df)
typeof(df)
class(df)
