#2

punif(0, -8, 8)
?punif

punif(4, -8, 8) - punif(-4, -8, 8)

punif(7, -8, 8) - punif(-6, -8, 8)

sum(punif((-4:8), -8, 8)) - sum(punif((-8:4), -8, 8))

?runif

#5
?pnorm
pnorm(2.03) - pnorm(0)
pnorm(2) - pnorm(0)
pnorm(0) - pnorm(-2.7)
pnorm(2.7) - pnorm(-2.7)
pnorm(1.07)
1 - pnorm(-1.25)
pnorm(2) - pnorm(-1.7)
pnorm(2.5) - pnorm(1.07)
1 - pnorm(1.7)
pnorm(2.5) - pnorm(-2.5)

#6
qnorm(0.9836)
#pnorm(c) - pnorm(0) = 0.2939
qnorm(0.2939 + pnorm(0))

# 1 - pnorm(c) = 0.1271

qnorm(1 -0.1271)

pnorm(c) - pnorm(-c) = 0.6476

qnorm(0.6476/2 + 0.5)

pnorm(0.9299442) - pnorm(-0.9299442)

1-0.0128
qnorm(0.9872/2 + 0.5)

#7
qnorm(1-0.0094)
qnorm(1-0.09)
qnorm(1-0.696)


#8
pnorm(13, 13, 1.5)
pnorm(14.5, 13, 1.5)

1 - pnorm(5.5, 13, 1.5)

pnorm(16, 13, 1.5) -  pnorm(11, 13, 1.5)

pnorm(15, 13, 1.5) -  pnorm(11, 13, 1.5)

#9
pnorm(50, 46.8, 1.75)

1 - pnorm(49, 46.8, 1.75)

pnorm(51.175, 46.8, 1.75) - pnorm(42.425, 46.8, 1.75)

#10
pnorm(3.1, 3, 0.08) - pnorm(2.9, 3, 0.08)

pnorm(3.1, 3.04, 0.04) - pnorm(2.9, 3.04, 0.04)

#11

pnorm(20, 33, 7.1)

pnorm(20, 33, 7.1) - dnorm(20, 33, 7.1)

qnorm(0.75, 33, 7.1)
qnorm(0.15, 33, 7.1)

qnorm(0.1, 33, 7.1)
qnorm(0.9, 33, 7.1)

#12

pexp(3, 1)

pexp(5, 1) - pexp(1, 1)

#13

1- pexp(2, 1 / 2.815)

pexp(3, 1 / 2.815)

pexp(3, 1 / 2.815) - pexp(2, 1 / 2.815)

1 - pexp(14.075, 1 / 2.815)

pexp(0, 1 / 2.815)
