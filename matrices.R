# Matrices 
# All columns in a matrix must have the same mode(numeric, character, etc.) 
# and the same length. The general format is:
# mymatrix <- matrix(vector, nrow=r, ncol=c, byrow= FALSE,
#                    dimnames=list(char_vector_rownames, char_vector_colnames))
# byrow=TRUE indicates that the matrix should be filled by rows. 
# byrow=FALSE indicates that the matrix should be filled by columns (the default). 
# dimnames provides optional labels for the columns and rows.


# generates 5 x 4 numeric matrix
y<- matrix(1:20, nrow=5, ncol=4)
y

# another example
cells <- c (1,26,24, 68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                    dimnames=list(rnames, cnames))
mymatrix


#specific column or row extraction

x <- matrix(1:10, nrow = 5, ncol = 4)
x

#4th column of matrix
x[,4] 

#3rd row of matrix
x[,3]

#rows 2,3,4 of columns 1,2,3
x[2:4, 1:3]


#generating a matrix
f <- matrix(1:12, 3, 4, byrow = T)
f


#remove current variable from R
rm(list = ls())


#load specific data sets, or list the available data sets
data()


#load 'mtcars'
data('mtcars')

#help 'mtcars'
?mtcars
