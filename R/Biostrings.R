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
BiocManager::install("Biostrings",force = TRUE)
library(Biostrings)
b <- BString("I am a BString object")
b
str(b)
length(b)
bb <- subseq(b, 3, 6)
d <- Views("TTGAAAA-CTC-NWSHBED")
d
d[1:3]
d[length(d):1]

DNAseq = DNAString("GTACGTCAGTACGTCAGTCGATGCATGTCAGTGCTAGCTAG")
length(DNAseq)
subseq(DNAseq, 3, 6)
subseq(DNAseq, 3:6, 6:9)
# Extract consecutive codons
codons_set1 <- codons(DNAseq)
codons_set2 <- codons(DNAseq[2:length(DNAseq)])
codons_set3 <- codons(DNAseq[3:length(DNAseq)])
print(codons_set1)
print(codons_set2)
print(codons_set3)
codons_set1[codons_set1== DNAString("ATG")]
## 2. Overlapping 3-Mers (Sliding Window)
overlapping_codons <- Views(DNAseq, start = 1:(length(DNAseq) - 2), width = 3)

# Convert to a DNAStringSet
as(overlapping_codons, "DNAStringSet")



## 3. Codon Frequency & Counts (All 64 Theoretical Combinations)
# Non-overlapping codon frequencies (step = 3)
codon_counts <- trinucleotideFrequency(DNAseq, step = 3)
head(codon_counts)

# Overlapping 3-mer frequencies (step = 1)
all_counts <- trinucleotideFrequency(DNAseq, step = 1)

RNAseq <- RNAString(DNAseq)
DNAseq == RNAseq




>>>>>>> a309338 (Add GC content script)
