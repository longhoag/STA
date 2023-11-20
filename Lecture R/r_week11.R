# 7.1 continued ----

# Finding n for a WIDTH of at most 10 with sd = 25 for 90% CI.
ceiling((2*qnorm(1.99/2)*25/10)^2)
ceiling((qnorm(1.99/2)*25/5)^2)


2*qnorm(1.99/2)*25/sqrt(165)
2*qnorm(1.99/2)*25/sqrt(166)

# 7.2/7.3 ----

# z vs t with increasing degrees of freedom, showing t gets closer to z.
qnorm(1.95/2)
qt(1.95/2, 7)
qt(1.95/2, 30)
qt(1.95/2, 70)

# CI for mu using t
7203.191 + c(-1,1)*qt(1.95/2, 29)*543.54/sqrt(30)

# CI for p (uses z)
(35/50) + c(-1,1)*qnorm(1.95/2)*sqrt((35/50)*(1-(35/50))/50)

# To make it cleaner can use decimals or variables
p <- 35/50
p + c(-1,1)*qnorm(1.95/2)*sqrt(p*(1-p)/50)

# Margin of error using t ----
qt(1.95/2, 29)*543.54/sqrt(30)
7203.191 + c(-1,1)*202.9612

# Upper----
qt(0.95, 29)
1.699*543.54/sqrt(30)
7203.191 + 168.60















