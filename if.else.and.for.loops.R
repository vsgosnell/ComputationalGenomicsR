# if statement
# syntax:
if(test_expression) {
  statement
}


x <- 5
if (x > 0) {
  print("Positive number")
}


# if ... else statement
# syntax:
if(test_expression) {
  statement1
} else {
  statement2
}


y <- -5
if(y>0) {
  print("Non-negative number")
} else{
  print("Negative number")
}



# if ... else ladder
# the if ... else ... if statement allows you to execute a block of code
# among more than 2 alternatives
#syntax:
if(test_statement) {
  statement1
} else if(test_expression2) {
  statement2
} else if(test_expression3) {
  statement3
} else {
  statement4
}


u <- -0
if(u<0) {
  print("Negative number")
} else if(x>0) {
  print("Positive number")
} else {
  print("Zero")
}




# syntax of for loop
for(val in sequence) {
  statement
}

x <- c(2,5,3,9,8,11,6)
count <- 0
for (val in x)
{
  if(val %% 2 == 0)
    count = count+1
}
print(count)

