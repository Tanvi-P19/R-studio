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
