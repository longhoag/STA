# n=10, M=5, N=25
# Pr(X=2)

choose(5,2)*choose(20,8)/choose(25,10)

# or

?dhyper
# dhyper(x, M, N-M, n)
dhyper(2, 5, 25-5, 10)

x <- 2; M <- 5; N <- 25; n <- 10
dhyper(x, M, N-M, n)

# Pr(X <= 2)
phyper(2, M, N-M, n)

# Pr(2 <= X <= 5) = Pr(X <= 5) - Pr(X <= 1)
phyper(5, M, N-M, n) - phyper(1, M, N-M, n)

# Pr(2 < X < 5) = Pr(3 <= X <= 4) 
phyper(4, M, N-M, n) - phyper(2, M, N-M, n)

# Pr(X >= 4) = 1 - Pr(X < 4) = 1 - Pr(X <= 3)
1 - phyper(3, M, N-M, n)





# poisson stuff

# Pr(X=0)
exp(-2) #e^(-2)

# or
?dpois
dpois(0, 2)

# Pr(Y > 1) = 1-Pr(Y <= 1)
1-ppois(1, 5)

# Pr(X=0)*Pr(Y=0)
dpois(0, 2)*dpois(0,5)

