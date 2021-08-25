# a place for r programming exercises

percent_na <- function(x){
  mean(is.na(x))
}

percent_na(c(3,4,5, NA, NA))

num_divided_by_sum <- function(x){
  x / sum(x, na.rm = TRUE)
}

num_divided_by_sum(1:5)


# Question 4: write a function that computes varience, can test it against the base r function var
variance <- function(x, na.rm = TRUE) {
  n <- length(x)
  m <- mean(x, na.rm = TRUE)
  sq_err <- (x - m)^2
  sum(sq_err) / (n - 1)
}

# function just created
variance(1:10)
# base r
var(1:10)
