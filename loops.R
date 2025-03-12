#remove all variables
rm(list = ls())

#expression data, 30 samples, 4 measurements
set.seed(100) # to make results consistent, from Gauss distribution
df <- matrix( rnorm(120, 3, 2), 30, 4) # 30 row, 4 column
df

#want to investigate which sample has low expression profiles
#take the average for each row
#need to go thru each row one by one

#how many rows in df?
nrow(df)

#generate variable i, calls the vector from #1 to the number of rows
for( i in 1:nrow(df)) {
  print(i)
}


for( i in 1:nrow(df)) {
  print(df[i,])
}


ave_df <- c()
for( i in 1:nrow(df)) {
  v <- mean(df[i,])
  print(v)
}


#build empty vector
#to deposit average from each row
# i is row id from 1 to end of row #s
# only pick up specific row based on row id variable i
# deposit information into variable v
# assign variable v to find the mean of each row in the df
# the number keeps getting higher bc you haven't removed it, so it's adding to it
# need to include the empty vector and empty it every time you run it to redo the number count

ave_df <- c()
for( i in 1:nrow(df)) {
  v <- mean(df[i,])
  ave_df <- c(ave_df, v)
}
 ave_df

#for loop
#how to change if the number is bigger than 3, keep the row id
 
 id_big3 <- c()
 for( i in 1:nrow(df)) {
   v <- mean(df[i,])
   if(v > 3) {    # if v > 3, we want row id
     id_big3 <- c ( id_big3, i)
   }
 }
 id_big3


 
 
 #apply, sapply, lappy
 
 #apply is replacement for for loop
 # 1 is manipulating for each row, 2 indicates manipulating each column
apply(df, 1, mean)
#input matrix you want, manipulate by column, what kind of manipulation you want for this matrix
 
#average value for each column
apply(df, 2, mean)
 


#function
#which element, after you take the average, is bigger than 3
#giving a vector, calculate average value
#if bigger than 3, return TRUE, otherwise, return FALSE

bigger3 <- function(x) {
 if(mean(x) > 3) {
   return(T)
 } else{
   return(F)
 }
}

bigger3(c(1,2,30))




#another function example
sum <- function(x,y) {
  x + y
}
sum(3,100)




#sapply example
sapply(1:nrow(df), bigger3)

#to get row id, add which
which( sapply(1:nrow(df), bigger3))
#tells which element inside the vector is true


#which row has average value bigger than 3
which( rowMeans(df) > 3)

#using packages is much more efficient when manipulating big matrices



