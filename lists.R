#lists
# an ordered collection of objects (components)
# a list allows you to gather a variety of possibly unrelated
# objects under one name

#example of a list with 4 components
# a string, a numeric vector, a matrix, and a scalar
w <- list(name = "Fred", mynumbers = a, mymatrix = y, age = 5.3)
w

#example of a list containing two lists
v <- c(list1, list2)


#identify elements of a list using the [[]] convention

#2nd component of the list 
mylist[[2]]

#component named "mynumbers" in list
mylist[["mynumbers"]]



#show the difference between a vector and a list
vectorexample <- c(7, 'list', 8)
listexample <- list(name = 'fred', mynumber = c(1,2,3), 
                    mymatrix = 1:10, age = 5.3)

vectorexample
listexample




# example of a list with 4 components - 
# a string, a numeric vector, a matrix, and a scaler 
w <- list(name = 'Marcus',  days = c('2nd', '4th', '20th', '28th'),
          exp = expression, height = '177cm')
w


w[[3]] # 3rd component of the list


w[["exp"]] # component named exp in list



