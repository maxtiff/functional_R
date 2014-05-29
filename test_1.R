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
df[] <- lapply(df,fix_missing)