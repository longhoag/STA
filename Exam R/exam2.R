# punif ---- 

# since our case is a uniform distribution, then:
?punif

# When X is uniformly distributed with a and b, then Pr(X <= x) = punif(x, a, b)
punif(360, 0, 360)
punif(180, 0, 360)

# Pr(90 <= x <= 180)
punif(180, 0, 360) - punif(90, 0, 360)

# 4.3 Normal Distribution ----
# Pr(X <= 1) where X~N(1.25, 0.46) = Pr(Z <= -0.5435)
pnorm(-0.5435) # uses z score by default if no mu and sigma are provided
pnorm(-0.54)

norm(1, 1.25, 0.46) #standardizes for you! #for x

# Pr(Z <= c) = 0.571
qnorm(0.571)
pnorm(0.1789) # Verifying


# qt ----
?qt
# CI for mu using t
7203.191 + c(-1,1)*qt(1.95/2, 29)*543.54/sqrt(30)

# note ----
#Pr(−c ≤ Z ≤ c) = 0.6476
qnorm(0.6476/2 + 0.5)

#P(c ≤ |Z|) = 0.0128
1-0.0128
qnorm(0.9872/2 + 0.5)

# test begin-----


#2
qt(1.95/2, 195)
qt(1-0.025, 195)
qt(1-0.05, 195)


#3
qnorm(0.05)
qnorm(0.1)


#4
pnorm(29.5, 24, 5) - pnorm(18.5, 24, 5)

pnorm(34, 24, 5) - pnorm(29, 24, 5)

pnorm(23.5, 24, 5) - pnorm(22.5, 24, 5)

qnorm(0.01/2)
