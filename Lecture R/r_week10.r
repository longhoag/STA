# 7.1 ----
xbar <- 80; z <- qnorm(1.95/2); se <- 2/sqrt(31)

xbar + z * se
xbar - z * se

xbar + c(-1,1)* z * se

80 + c(-1,1) * qnorm(1.95/2) * 2/sqrt(31)

# What happens when modifying ME or n.
80 + c(-1,1) * qnorm(1.99/2) * 2/sqrt(31)
80 + c(-1,1) * qnorm(1.95/2) * 2/sqrt(60)

# Finding n for a specified ME
ceiling((qnorm(1.95/2) * 2 / 0.82)^2)

# Confirming n
qnorm(1.95/2) * 2/sqrt(23)

