if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
<<<<<<< HEAD
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
BiocManager::install(version = "3.23")
BiocManager::install(c("GenomicFeatures", "AnnotationDbi"))
BiocManager::available()
BiocManager::install()
BiocManager::valid()
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
pkgs <- rownames(installed.packages())
BiocManager::install(pkgs, type = "source", checkBuilt = TRUE)
library(BiocManager)
?BiocManager::install

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.23")
a
BiocManager::install(c("GenomicFeatures", "AnnotationDbi"))

BiocManager::available()
BiocManager::install()
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
?BiocManager::install()
BiocManager::valid()
library(BiocManager)

#The XString class and its subsetting operator [
library(Biostrings)
BiocManager::install("Biostrings",force = TRUE)
b <- BString("I am a BString object")
b
str(b)
length(b)
b[length(b):1]

d <- DNAString("TTGAAAA-CTC-NWSHBD")
d
length(d)
str(d)
d[3]
d[1:3]
d[length(d):1]

i <- 1
DNAseq <- DNAString("GATCATGCATGCCATGATGCA")
for(i in 1:(length(DNAseq)-2)){
  print(subseq(DNAseq, start=i, end=i+2))
}

>>>>>>> a309338 (Add GC content script)
