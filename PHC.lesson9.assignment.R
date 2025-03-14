#remove all variables from environment
rm(list = ls())

#set working directory 
setwd("~/Desktop/R/ComputationalGenomicsR/")

# read the data
df <- read.table('vehicle_drug_feature_counts.txt',
                 header = T, sep = '\t', row.names = 1)

# check to make sure data loaded correctly
head(df) 



#Question 1a
# for loop to list quantile distribution of the last 4 columns
for (x in 6:ncol(df)) {
  print(quantile(df[,x]))  
}




#check parameters of apply
?apply


#Question 1b
# Applying the quantile function to columns 6 to 9
quantiles <- apply(df[, 6:9], 2, quantile, 
                   probs = c(0, 0.25, 0.5, 0.75, 1), na.rm = TRUE)
#probs specifies the quantiles: Q1-Q4

# Print the result
print(quantiles)





#Question 2a
# Identify genes (rows) with at least one read (non-zero value)
genes_with_reads <- which(rowSums(df > 0) > 0)

# Extract the filtered gene expression data
filtered_df <- df[genes_with_reads, , drop = FALSE]

# Print the result
print(filtered_df)




#Question 2b
# for loop to calculate FPKM for each column 
fpkm_merge <- c() # create empty vector to 'dump' answers
for (i in 6:9) { # loop over columns 6:9
  s <- sum(df[,i]) # calculates total mapped reads by selecting ith sample (single sample)
  l <- df[,5] # extract gene length -> column 5 
  fpkm <- df[,i]*(10^9)/s/l # FPKM formula: df[,i] = raw counts for given sample, 
                                                      #(10^9) = scaling factor to make FPKM values comparable
                                                      # /s normalizes by total mapped reads of that sample
  #store the results                                  # /l normalizes by gene length
  fpkm_merge <- cbind(fpkm_merge, fpkm) #cbind() binds the fpkm column for current sample to fpkm_merge
                                        #after looping thru all samples (6:9), fpkm_merge will contain FPKM values for all samples
}
#assigns original gene names as row names
rownames(fpkm_merge) <- rownames(df)
#assigns sample names (6:9) as column names
colnames(fpkm_merge) <- colnames(df)[6:9]

#prints output
fpkm_merge
#rows = genes
#columns = samples 6-9
#values = FPKM for each gene in each sample



#Question 2c
# use apply to calculate FPKM for each column 

# Ensure row names are set
rownames(df) <- df$GeneID

# use apply function to compute FPKM for columns 6:9
# make sure s and l are numeric -> otherwise error

# Apply function to compute FPKM for columns 6:9
fpkm_merge <- apply(df[,6:9], 2, function(counts) { #extracts cols 6:9 which contain raw read counts for each sample
                                                    #apply applies a function column-wise (2=columns)
                                                    #counts = a single column (raw read counts for each sample) in each iteration 
  s <- as.numeric(sum(counts))  # total mapped reads per sample -> convert to numeric to avoid overflow
  l <- as.numeric(df[,5])  # gene length column (column 5) -> convert gene length to numeric
  (counts * 1e9) / (s * l)  # FPKM formula
                            #scales raw counts by 10^9
                            #s = total mapped reads (normalizes across samples)
                            #l = gene length (normalizes for gene size)
})

# Convert to data frame and set row/column names
fpkm_merge <- as.data.frame(fpkm_merge) # apply returns a matrix, so as.data.frame converts this matrix to a df
rownames(fpkm_merge) <- rownames(df) # keeps the gene names as row names
colnames(fpkm_merge) <- colnames(df)[6:9] # assigns sample names as column names

# Print FPKM values
print(fpkm_merge)
#rows = genes
#columns = samples 6-9
#values = FPKM for each gene in each sample


