x <- 1:6
px <- c(0.3,  0.25, 0.15, 0.05, 0.1, 0.15)

ex <- sum(x*px); ex # E[X]
ex2 <- sum(x^2 * px); ex2 # E[X^2]

ex2 - ex^2 # variance

# --------

# Pr(X=3)
choose(6,3) * .75^3 * .25^3
# or
# dbinom(k, n, p) is the same as Pr(X=k) for b(x; n, p).
?dbinom
dbinom(3, 6, 0.75)



# Pr(X <= 4)
1 - (choose(6,5) * .75^5 * .25^1 + choose(6,6) * .75^6 * .25^0)
# or...
# pbinom(k, n, p) is the same as Pr(X <= k) with n and p. 
pbinom(5, 6, .75) - pbinom(1, 6, .75)
sum(dbinom(2:5, 6, .75))

pbinom(4, 6, .75)
1 - sum(dbinom(5:6, 6, 0.75))