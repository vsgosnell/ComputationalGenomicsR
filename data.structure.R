#removes all variables in environment
rm(list = ls())

a <- 1
a <- 'abc'

#parentheses are functions in R
a <- c(1,2,3)
b <- c('a','b','c','d','e')

#bracket -> location of item in vector

#element 2 of vector a
a[2:3]

#take elements 3-5 of vector b
b[3:5]

# matrices

d <- matrix(2:13,nrow = 3, ncol = 4)
d

#extract element on row 2 column 3
d[2,3]

d[2,1:4]

#can leave out the specifics 1:4
d[2,]
#take column 3 
d[,3]

# logic variable
3 > 1

#need a double = to assign exact 
3 == 1



# data frames

#cbind is column bind
#rbind is row bind
df <- cbind( c('id1','id2','id3'),
        c(100,200,300),
        c('1/10','2/1','4/NA'))
df
#binding together changes them all to one mode -> integer or string
#use data frame instead

df <- data.frame( id = c('id1','id2','id3'),
                  exp = c(100,200,300),
                  date =c('1/10','2/1','4/NA'))
df


list(clinical1 = df)

df2 <- data.frame( id = c('id111','id22','id33'),
                  exp = c(100,220,0),
                  date =c('3/10','12/1','4/NA'))

ll <- list(clinial2 = df2, '1', 2)
ll


#replicate 1 ten times
c( rep(1,10), rep(3,4))

#gives levels
factor(c( rep(1,10), rep(3,4)))
#ex./ patient and health, result and treatment 
#which sample has which treatment




#functions

length(b)

#tells the class
mode(df)
mode(a)


?matrix
#elements in the parentheses of the function 
#need to follow the definition order of the function

