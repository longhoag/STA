# 4.2 CDFs and Expected Values ----

f <- function(x){1/8 + (3/8)*x}
integrate(f, 1, 1.5)

# need the $value to do math with integration
1-integrate(f, 0, 1)$value

# E[X]
f <- function(x){x * (3/2) * (1-x^2)}
integrate(f, 0, 1) #E[X] = 3/8
ex <- integrate(f, 0, 1)$value

# E[X^2]
f <- function(x){x^2 * (3/2) * (1-x^2)}
integrate(f, 0, 1) #E[X^2] = 1/5
ex2 <- integrate(f, 0, 1)$value

ex2 - ex^2 #Var[X]


# 4.3 Normal Distribution ----
# Pr(X <= 1) where X~N(1.25, 0.46) = Pr(Z <= -0.5435)
pnorm(-0.5435) # uses z score by default if no mu and sigma are provided
pnorm(-0.54)

pnorm(1, 1.25, 0.46) #standardizes for you!

# X~N(1.25, 0.46)
# Pr(1.3 <= X <= 2)
pnorm(2, 1.25, 0.46) - pnorm(1.3, 1.25, 0.46)
pnorm(1.63) - pnorm(0.11)

# Pr(Z <= c) = 0.571
qnorm(0.571)
pnorm(0.1789) # Verifying

# Pr(c <= Z) = Pr(Z >= c) = 0.724
qnorm(0.276)
qnorm(1-0.724)

# Pr(15 <= X <= c) = 0.475, with X~N(15, 1.25)
qnorm(0.975, 15, 1.25)




# 4.4 Exponential Distribution ----
# Ex
# Part a
exp(-0.5*4)

?pexp
# Pr(X >= 4) with lambda = 0.5
1-pexp(4, 0.5)

# Part b
# Pr(1 <= X <= 2) with lambda = 0.5
pexp(2, 0.5) - pexp(1, 0.5)
