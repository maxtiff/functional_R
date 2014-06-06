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

## Use integrate() and an anonymous function to find the area under the curve for the following functions.

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

## Create an closure that records the amount of times that the function has been called.
new_counter <- function() {
  i <- 0
  function() {
    i <<- i + 1
    i
  }
}

## Illogical variations on new_counter function:

  ## Does not create a function
  i <- 0
  new_counter2 <- function() {
    i <<- i + 1
    i
  }

  ## Counter always resets because variable 'i' does not go beyond the current environment.
  new_counter3 <- function() {
    i <- 0
    function() {
      i <- i + 1
      i
    }
  }


# Create a function that creates functions that compute the ith central moment of a numeric vector. You can test it by running the following code:
#   
#   m1 <- moment(1)
#   m2 <- moment(2)
# 
#   x <- runif(100)
#   stopifnot(all.equal(m1(x), 0))
#   stopifnot(all.equal(m2(x), var(x) * 99 / 100))

moment <- function(x) {
  
  
  
}
