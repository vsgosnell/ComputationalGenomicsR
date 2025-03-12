#load the data
setwd("~/Desktop/R/ComputationalGenomicsR/")
df <- read.table('vehicle_drug_feature_counts.txt',
                 header = T, sep = '\t', row.names = 1)

#data normalization (FPKM)
dfReads <- df[,6:9]
fpkm    <- apply(dfReads, 2, 
                 function(x){x/df$Length *10^9/sum(x)})

##change the col name
colnames(fpkm) <- c('c1','c2','t1','t2')

##save the data
write.table(fpkm, file = 'vehicle_drug_feature_counts.fpkm.txt',
            row.names = T, col.names = T, sep = '\t',
            quote = F)

plot(fpkm[,1],fpkm[,2])


## change to log2
plot(log2(fpkm[,1]), log2(fpkm[,2]))


## change the points color 
plot(log2(fpkm[,1]), log2(fpkm[,2]),
     col = 'red', pch = 19)

#define the points by color further
plot(log2(fpkm[,1]), log2(fpkm[,2]),
     bg = 'red', pch = 21)


## change the lable
plot(log2(fpkm[,1]), log2(fpkm[,2]),
     bg = 'red', pch = 21,
     xlab = 'log2(control1_FPKM)',
     ylab = 'log2(control2_FPKM)')


## change the direction of the number at y-axis
plot(log2(fpkm[,1]), log2(fpkm[,2]),
     bg = 'red', pch = 21,
     xlab = 'log2(control1_FPKM)',
     ylab = 'log2(control2_FPKM)', las = 1)

##add regression line
id <- which(is.finite(log2(fpkm[,2])) & is.finite(log2(fpkm[,1])) )

nrow(fpkm)

length(id)

abline(lm(log2(fpkm[id,2]) ~ log2(fpkm[id,1])))

## change the width of the line 
abline(lm(log2(fpkm[id,2]) ~ log2(fpkm[id,1])),
       col = 'black', lwd = 3)



#use ggplot2 to draw scatter plot
library(ggplot2)
fpkm_c <- data.frame(c1 = as.numeric( fpkm[,1] ),
                     c2 = as.numeric( fpkm[,2] ) )
ggplot(fpkm_c, aes(x = c1, y = c2)) +
  geom_point() +
  geom_smooth(method = lm, se = F)


## with other color 
ggplot(fpkm_c, aes(x = c1, y = c2)) +
  geom_point(col = 'red') +
  geom_smooth(method = lm, se = F, col = 'navy')


#use ggplot2 to draw scatter plot with 2D density estimation
ggplot(log2(fpkm_c), aes(x = c1, y = c2)) +
  geom_point() +
  geom_density_2d()
