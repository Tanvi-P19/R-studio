<<<<<<< HEAD
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("ShortRead",force = TRUE)

library(Biostrings)
library(ShortRead)

list.files() #to list all the files
getwd() #to get the location
setwd() #to set the location

#create a DNAStringSet manually
my_seqs <- DNAStringSet(c("ATGCGATCGA", "CAGTCGATCG"))
names(my_seqs) <- c("Seq1_geneA", "Seq2_geneB")
my_seqs

#Export to a new FASTA files
writeXStringSet(my_seqs, filepath = "test.fasta")

#Read FASTA files
DNAseq <- readDNAStringSet("C:/Users/Tanvi Pawar/OneDrive/Scans/R studio/R/ACE2.fasta")

#Inspect summary and headers
DNAseq
names(DNAseq)

#Access sequence lengths and individual elements
width(DNAseq)
length(DNAseq)
first_seq <- DNAseq[[1]]

#
=======
#Atomic Vectors
dbl_var <- c(1, 2.5, 4.5)
typeof(dbl_var)
# R consider evrything double.With the L suffix, you get an integer rather than a double
int_var <- c(1L, 6L, 10L)
typeof(int_var)
is.integer(int_var)
is.atomic(int_var)
# Use TRUE and FALSE (or T and F) to create logical vectors
log_var <- c(TRUE, FALSE, T, F)
typeof(log_var)
chr_var <- c("these are", "some strings")
typeof(chr_var)

#Given a vector, you can determine its type with typeof(), or check if it’s a specific type with an “is” function: is.character(), is.double(), is.integer(), is.logical(), or, more generally, is.atomic().
dbl_var <- c(1, 2.5, 4.5)
typeof(dbl_var)
is.double(dbl_var)
is.atomic(dbl_var)
is.numeric(int_var)
is.numeric(dbl_var)

#Coercion
#All elements of an atomic vector must be the same type, so when you attempt to combine different types they will be coerced to the most flexible type. Types from least to most flexible are: logical, integer, double, and character.
str(c("a", 1))

x <- c(FALSE, FALSE, TRUE)
as.numeric(x)

# Total number of TRUEs
sum(x)
# Proportion that are TRUE
mean(x)
typeof(mean(x))

#list
x <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))
str(x)

#Lists are sometimes called recursive vectors, because a list can contain other lists.
x <- list(list(list(list())))
str(x)
is.recursive(x)

x <- list(list(1, 2), c(3, 4))
y <- c(list(1, 2), c(3, 4))
str(x)
str(y)

#attributes
y <- 1:10
attr(y, "my_attribute") <- "This is a vector"
attr(y, "my_attribute")
str(attributes(y))

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
>>>>>>> a309338 (Add GC content script)
