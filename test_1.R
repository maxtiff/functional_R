#### http://adv-r.had.co.nz/Functional-programming.html

## Create random data set that uses '-99' in the place of missing values.
set.seed(1014)
df <- data.frame(replicate(6, sample(c(1:10, -99), 10, rep = TRUE)))
names(df) <- letters[1:6]
head(df)

## Declare function that replaces '-99' with 'NA'
fix_missing <- function(x) {
   x[x == -99] <- NA
   x
}

## Use lapply to fix all missing values.
## lapply() is called a functional, because it takes a function as an argument. 
## Functionals are an important part of functional programming. 
df[] <- lapply(df,fix_missing)

## lapply technique can be used on column subsets as well.
df[1:5] <- lapply(df[1:5], fix_missing)

## Use lapply with an anonymous function to find the standard deviation of each column in mtcars
lapply(mtcars, function(x) sd(x)/mean(x))

## Use integrate() and an anonymous function to find the area under the curve for the following functions. Use Wolfram Alpha to check your answers.

  #   y = x ^ 2 - x, x in [0, 10]
  #   y = sin(x) + cos(x), x in [-pi, pi]
  #   y = exp(x) / x, x in [10, 20]

integrate(function(x) x ^ 2 - x, 0, 10)
integrate(function(x) sin(x) + cos(x), -pi,pi)
integrate(function(x) exp(x) / x, 10, 20)

## Parent function that creates child functions of square and cube.
power <- function(exponent) {
  function(x) {
    x ^ exponent
  } 
}

square <- power(2)
square(2)
square(4)

cube <- power(3)
cube(2)
cube(4)