
#numbers at end of datat file is number of reads

#remove all variables from environment
rm(list = ls())

#set working directory and read the data
setwd("~/Desktop/R/ComputationalGenomicsR/")

#sep = '\t' -> separate by tab
#row.names = 1 -> get the first column
#header = T -> include header
df <- read.table('vehicle_drug_feature_counts.txt',
                 header = T, sep = '\t', row.names = 1)

df 






