#factors
# tell R that a variable is nominal by making it a factor
# the factor stores the nominal values as a vector of integers
# in the range [1 ... k] where k is the number of unique values in the nominal variable
# and an internal vector of character strings (the original values) mapped to these integers


#variable gender with 20 "male" entries and 30 "female" entries
gender <- c(rep("male", 20), rep("female", 30))

#stores gender as 20 1s and 30 2s and associates 1 = female, 2 = male internally (alphabetical)
#R now treats gender as a nominal variable
gender <- factor(gender)
summary(gender)


#useful functions

length(object) # number of elements or components
str(object)) # structure of an object
class(object) # class or type of an object
names (object) # names
c(object, object, ...) # combine objects into a vector
cbind(object, object, . . . ) # combine objects as columns
rbind(object, object, . . . ) # combine objects as rows
object # prints the object
1s () # list current objects
rm(object) # delete an object



#getting information on a data set

#list objects in the working environment
ls()

#list variables in mydata
names(mydata)

#list the structure of mydata
str(mydata)

#list levels of factor v1 in mydata
levels(mydata$v1)

#dimensions of an object
dim(object)




#data saving
write.table(mtcars, file = '~/Desktop/mtcars.txt', row.names = T,
            col.names = T, sep = '\t', quote = F)

#data loading
read.table(file ='~/Desktop/mtcars.txt', sep = '\t', header = T)



#from a comma delimited text file
# first row contains variable names, comma is separator
# assign the variable id to row names
# note the / instead of \ on mswindows systems
mydata <- read.table("c:/mydata.csv", header=TRUE,
                      sep=",", row.names="id")




# from excel
# One of the best ways to read an Excel file is to export it to a comma delimited file and
# import it using the method above. Alternatively you can use the xlsx package to access
# Excel files. The first row should contain variable/column names.

# read in the first worksheet from the workbook myexcel.xlsx
# first row contains variable names
install.packages("xlsx")
library(xlsx)
#R aborts when running this command ^ -> fatal error

mydata <- read x1sx("c:/myexcel.x1sx", 1)
# read in the worksheet named mysheet
mydata <- read x1sx("c:/myexcel.x1sx", sheetName = "mysheet")




length(expression) # number of elements or components

str(expression)    # structure of an object 

class(expression)  # class or type of an object

names(expression)  # names




x1 <- 1:3; y1 <- 1:3
c(x1,y1)       # combine objects into a vector

cbind(x1,y1)   # combine objects as columns

rbind(x1,y1)   # combine objects as rows 

x1     # prints the object

ls()       # list current objects

rm(x1) # delete an object

