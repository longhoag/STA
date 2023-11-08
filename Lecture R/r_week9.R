# 5.3/5.4 - Distribution of Sample Mean ----

# Rolling 4-sided die three times.
xbar <- NULL
for(i in 1:4){
  for(j in 1:4){
    for(k in 1:4){
      xbar <- c(xbar,round((i+j+k)/3, 2))
    }
  }
}

# Frequency distribution and relative frequency distribution.
table(xbar)
prop.table(table(xbar))

# mean of means.
mean(xbar)

# Can't use sd(...) because that would do (n-1) in the denominator.
sqrt(sum((xbar - mean(xbar))^2)/length(xbar))

# Showing mean and sd for a single dice roll, and then dividing
#     that sd by sqrt(3) to see it's equivalent to the one above.
x <- 1:4
mu <- sum(x)/4; mu
sigma <- sqrt(sum((x - mu)^2)/4); sigma
sigma/sqrt(3)




# Generalizing ----

# sides is how many sides to the dice, iters is how many times
#     the dice are thrown.
get_xbar <- function(sides, iters) {
  # expand.grid(...) is doing the table like how I did in class,
  #     just a different order to my triple-nested for loop lol.
  outcomes <- expand.grid(rep(list(1:sides), iters))
  l <- length(outcomes$Var1)
  outcomes <- as.matrix(outcomes)
  
  xbar <- NULL
  for (i in 1:l) {
    xbar <- c(xbar, round(mean(outcomes[i,]), 2))
  }
  cat("data: ", xbar, "\n\n")
  #table(xbar)
  cat("mean: ", mean(xbar), "\n")
  cat("  se: ", sqrt(sum((xbar - mean(xbar))^2)/length(xbar)), "\n")
}

get_xbar(4, 3)
sides <- 4; iters <- 3



# Random distribution ----

x <- c(1, 3, 5)
px <- c(0.6, 0.1, 0.3)

# Try changing the size argument here. 5 to 50 to 500. Then run 
#     this multiple times to see how it compares to theoretical.
draws <- sample(x, size=5, replace=T, prob=px); draws

mean(draws) # observed mean from random sample
sum(x*px) # theoretical mean

table(draws)
prop.table(table(draws))



# CLT using exponential RV---- 
# CLT using X~exp(0.2)

xbars <- NULL
n <- 5
lambda = 0.2

# conducting the experiment some amount of times
for(i in 1:100){
  xbars <- c(xbars, mean(rexp(n, lambda)))  
}
hist(xbars, breaks=seq(min(xbars),
                       max(xbars),
                       length.out=sqrt(length(xbars))+1))
mean(xbars) # mean of xbar distribution
1/lambda # theoretical mean for exp dist



# Probabilities example ----
pnorm(4)-pnorm(-5.33)
pnorm(281, 272, 9/sqrt(16)) - pnorm(260, 272, 9/sqrt(16))