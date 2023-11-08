# continuous RVs
?integrate
integrate(function(x) x, 0, 4)

# when integrating a constant function, like 1/360, you need to wrap the 
#     function with Vectorize(function(x) ...)

integrate(Vectorize(function(x) 1/360), 0, 360)

# looks more neat like this:
f <- function(x) {1/360}

# Need to use "Vectorize(...)" when your function is just a constant.
integrate(Vectorize(f), 0, 360)
integrate(f, 0, 360) # error

# Pr(90 <= x <= 180)
integrate(Vectorize(f), 90, 180)$value

# since our case is a uniform distribution, then:
?punif

# When X is uniformly distributed with a and b, then Pr(X <= x) = punif(x, a, b)
punif(360, 0, 360)
punif(180, 0, 360)

# Pr(90 <= x <= 180)
punif(180, 0, 360) - punif(90, 0, 360)

# mean:
(1/2) * (0 + 360)

# variance:
(1/12) * (360 - 0)^2