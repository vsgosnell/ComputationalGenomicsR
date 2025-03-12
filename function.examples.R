#syntax for writing functions in R
func_name <- function(argument) {
  statement
}

# Here, we can see that the reserved word function is used to declare a function in R.
# The statements within the curly braces form the body of the function. 
# These braces are optional if the body contains only a single expression.
# Finally, this function object is given a name by assigning it to a variable, func_name .


#example of a function

#function to print x raised to the power of y
pow <- function(x,y) {
  result <- x^y
  print(paste(x, "raised to the power", y, "is", result))
}

# Here, we created a function called pow() .
# It takes two arguments, finds the first argument raised to the power of second argument
# and prints the result in appropriate format.
# We have used a built-in function paste() which is used to concatenate strings.

# can call the above function:
pow(8,2)
pow(2,8)
