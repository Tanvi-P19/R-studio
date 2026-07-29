use_git()
library(usethis)
use_github

#Example of matrix
mat <- matrix(1:100,nrow=5)
mat

#example of Vector
vec <- (1:100)
vec
vec[10]
vec <- 10:100
vec[10]

#example of Char Vector
letters <- c("A","B","C","D","E")
letters
letters[c(1,3)]
letters[c(2,4)]
letters[-c(1,3,5)]

#to tell whether that vector are present or not
ToExclude <- c("A","B","C")
ToExclude %in% letters
ToExclude <- c("A","B","F")
ToExclude %in% letters

meta <- c("A","B","C","D","E")
rnaseq <- c("A","B","C")
meta %in% rnaseq

#How to capture a specific value eg.25
mat[5,5]
#subset the data
mat[5,c(1:10)]

mat <- matrix(1:10,nrow=5)
mat
Sample <- c("control","Exp")
colnames(mat) <- Sample
mat
mat[,"control"]

#type of vectors
typeof(meta)
typeof(vec)

num <- 1:100
num
#Create exactly 100 numbers between 1 and 10
seqofnum <- seq(from=1, to=10, length.out = 100)
seqofnum

mat[3,1] = "true"
mat

#dataframes
vec1 <- 1:10
vec2 <- seq(1,100,10)
vec3 <- seq(1,2, length.out=10)
length(vec1)
length(vec2)
length(vec3)
matrix1 <- cbind(vec1,vec2,vec3)

#rbind n cbind to combine rows and columns
matrix1 <- cbind(vec1,vec2,vec3)
typeof(matrix1)

matrix1 <- cbind(vec1,vec2,vec3)
samples <- c("sample1","sample2","sample3","sample4","sample5","sample6","sample7","sample8","sample9","sample10")
df1 <- cbind(samples,matrix1)
df1 <- data.frame(samples,matrix1)
df1[,1]
typeof(df1[,1])
df1[,2]
typeof(df1[,2])

#Loop : while and for
i = 1
i
i = i+1

# The loop will continue as long as i is less than 10.
# It will stop when i becomes 10 (or greater).
# Print before incrementing
i = 1

while(i < 10){
  print(i)
  i = i + 1
}

# Print after incrementing
i = 1

while(i < 10){
  i = i + 1
  print(i)
}

# Demonstrating the value of i before and after incrementing
i = 0
while(i<10){
  print(paste(i,"th iteration: before incrementing"))
  i=i+1
  print(paste(i,"th iteration: after incrementing"))
}

# Demonstrating the value of i before and after incrementing

i = 0

while(i < 10){

  # Print the current value of i before increasing it
  print(paste(i, "th iteration: before incrementing"))

  # Increase the value of i by 1
  i = i + 1

  # Print the updated value of i after incrementing
  print(paste(i, "th iteration: after incrementing"))
}


i = 0
while(i<10){
  print(paste(i+1,"th iteration: before incrementing",i))
  i=i+1
  print(paste(i,"th iteration: after incrementing",i))
}

# Demonstrating that i+1 only calculates the next value.
# It does NOT change i until we assign it using i = i + 1.

i = 0

while(i < 10){

  # Display what the next value (i+1) will be, along with the current value of i
  print(paste(i + 1, "th iteration: before incrementing", i))

  # Increment i and store the new value
  i = i + 1

  # Print the updated value of i after incrementing
  print(paste(i, "th iteration: after incrementing", i))
}

# Print whether numbers from 1 to 10 are even or odd

i = 0                 # Initialize i to 0
while(i < 10){        # Repeat while i is less than 10
  i = i + 1           # Increment i by 1
  if(i %% 2 == 0){    # Check if remainder after dividing by 2 is 0
    print(paste(i, "is even"))
  }
  else{
    print(paste(i, "is odd"))
  }
}

i = 0
while (i<10) {
  i = i+1
  if(i%%2==0){#divisibility by 2
    print(paste(i, "is even"))
  }
  else{
    print(paste(i, "is odd"))
  }
}

# Loop through numbers from 1 to 10
for(i in 1:10){
  # Check if the number is divisible by 2
  if(i %% 2 == 0){
    # If remainder is 0, the number is even
    print(paste(i, "is even"))
  }
  else{
    # Otherwise, the number is odd
    print(paste(i, "is odd"))
  }
}

for (i in 1:10){
  #i = i+1
  if(i%%2==0){#divisibility by 2
    print(paste(i, "is even"))
  }
  else{
    print(paste(i, "is odd"))
  }
}

# Check numbers from 1 to 10
for (i in 1:10){
  # Check if the number is divisible by both 2 and 3
  if((i%%2 == 0) && (i%%3 == 0)){
    print(paste(i, "is divisible by 2 & 3"))
  }
  # Check if the number is divisible by 2
  if(i%%2==0){#divisibility by 2
    print(paste(i, "is divisible by 2"))
  }
  # Check if the number is divisible by 3
  if(i%%3==0){#divisibility by 3
    print(paste(i, "is divisible by 3"))
  }
}

for (data in 1:10){
  if (data < 5){
    print(paste(data, "is accessed & is less than 5"))
  }
  else {
    print(paste(data, "was not accessed"))
  }
}

for (data in 1:10){
  if (data < 5){
    print(paste(data, "is accessed & is less than 5"))
  }
  else if(data %% 2==0){
    print(paste(data, "> 5 and is even"))
  }
  else if(data %% 2==0){
    print(paste(data, "is still not accessed"))
  }
}

#General syntax for creating a user-defined function
function_name <- function(argument){
  body
}

# Create a vector containing 100 equally spaced numbers from 1 to 2
vec1 <- seq(1,2,length.out=100)
# Define a function to calculate the number of elements in a vector
name <- function(argument){
  length(argument)
}
# Call the function using vec1 as the input
name(vec1)

num1 <- 1
num2 <- 2

power <- function(arg1=0,arg2=1){
  arg1^arg2   # arg1 is the base and arg2 is the exponent (default values: arg1 = 0, arg2 = 1)
}
power()

seq(1,3)

#another eg for function
b=c(1,2,3)
d=c(4,5,6)
equality <- function(r1,r2){
  r1==r2
}
equality(b,d)


