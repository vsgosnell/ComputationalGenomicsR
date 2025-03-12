#data frames
#df is more general than a matrix
# different columns can have different modes -> numeric, character, factor, etc.
# this is similar to SAS and SPSS datasets

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE, TRUE, TRUE, FALSE)

mydata <- data.frame(d,e,f)

#variable names
names(mydata) <- c("ID", "Color", "Passed")

#there are a variety of ways to identify the elements of a data frame

#columns 3,4,5 of data frame
myframe[3:5]

#columns ID and Color from data frame
mydata[c("ID", "Color")]

#variable x1 in the data frame 
mydata$X1






expression <- runif(4) # random sampling four values from 0 to 1
gene <- c("gene1", "gene2", "gene3", "gene4")
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata <- data.frame(Gene       = gene, 
                     Expression = expression, 
                     pick       =f)
print(mydata)
