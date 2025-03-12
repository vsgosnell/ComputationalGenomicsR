
#numbers at end of data file is number of reads

#remove all variables from environment
rm(list = ls())

#set working directory and read the data
setwd("~/Desktop/R/ComputationalGenomicsR/")

#sep = '\t' -> separate by tab
#row.names = 1 -> get the first column
#header = T -> include header
df <- read.table('vehicle_drug_feature_counts.txt',
                 header = T, sep = '\t', row.names = 1)

head(df) 


#for loop for quantile
quantile(1:100) #example

for (x in 6:ncol(df)) {
  print(quantile(df[,x]))  # want to know for each column, what number should be the cutoff
}
#to know the distribution
#some genes have very high read count

#decide cutoff based on genome -> parasite higher than human (example)

#which gene has at least one read

rowSums(df[,6:9] == 0)



#calculate FPKM

#RPKM 
#FPKM -> each read count defined as Ci -> need to control total number of reads and lines of gene
# FPKM Ci/total sum Cj = total number of reads
# for each gene, has their own lines
# multiply by 10^6 to fit the computational scale

#calculate for loop for FPKM

for (i in 6:9) {
  s <- sum(df[,i])
  print(s)
}
#total number of reads corresponding to each column

#question 2, part b, for loop
fpkm_merge <- c()
for (i in 6:9) {
  s <- sum(df[,i])
  l <- df[,5]
  fpkm <- df[,i]*(10^9)/s/l # only for each column
  fpkm_merge <- cbind(fpkm_merge, fpkm)
}
rownames(fpkm_merge) <- rownames(df)
colnames(fpkm_merge) <- colnames(df)[6:9]

fpkm_merge



#function for fpkm
# counts is a count vector, 'len' is a vector corresponding transcription length

fpkm_cal <- function(counts, len) {
             s <- sum(counts)
             fpkm <- counts * (10^9)/s/len
             fpkm
}

head(fpkm_cal(df[,6], df[,5]))


#question 2 part c -> only one sentence 
#question 1 part b -> only one sentence 
