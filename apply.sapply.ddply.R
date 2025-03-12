#apply
# How to calculate the mean(median) value for each column(row) of matrix

medianMatrix <- function(x, id = "column") {
  if(id != 'column')
  {
    for(i in 1:nrow(x))
    {
      med <-median(x[i,])
      print(med)
    }
  } else 
  {
    for(i in 1:ncol(x))
    {
      med <- median (x[,i])
      print(med)
    }
  }
}

medianMatrix(matrix(1:30, 5, 6), id = 'row')


#apply
apply(matrix(1:30, 5, 6), 1, median)
apply(matrix(1:30, 5, 6), 2, median)

#extract the element in each column with value bigger than 10
apply(matrix(1:30, 5, 6), 2, function(x) {x[which(x>10)]})


#sapply
s <- list(1:10,
          runif(10,0,1),
          c(10,8,1,2,100))
sapply(s, median)


install.packages('gapminder')
library(gapminder)
head(gapminder)

# we want the maximum life expectancy for each continent
sapply(unique(gapminder$continent), function(x)
{max(gapminder$lifeExp[which(gapminder$continent ==
                               x)])})


#ddply()
install.packages("plyr", dependencies = TRUE)
library(plyr)
ddply(gapminder, ~(continent), function(x)
  {median(x$lifeExp)})

