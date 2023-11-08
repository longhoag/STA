#1

#h(x; 6, 8, 18) hypergeometric

# Pr(X <= 2)
# phyper(2, M, N-M, n)
?dhyper
# x 
# M is the successes 
# N (total) - M : the failures 
# n: sample size
dhyper(2, 8, 10, 6)

phyper(2, 8, 10, 6)

1 - phyper(1, 8, 10, 6)

#mean E[x] = n * M / N
6 * (8 / 18)
# sd = sqrt(var)

#N = 18
# n = 6
# M = 8

sqrt(1.045751634)


#2

#lambda = 1
ppois(4, 1)
dpois(1,1)

ppois(3,1) * (1 - ppois(0,1))

1 - ppois(2,1)

#3
#lambda = 20
ppois(18, 20)

1 - ppois(29, 20)

ppois(29, 20) * (1 - ppois(17,20))

ppois(28, 20) * (1 - ppois(18,20) )

ppois(28, 20) * (1 - ppois(11,20) )

#4
#lambda = 0.7

dpois(1, 0.7)

1 - ppois(1, 0.7)

dpois(0, 0.7) * dpois(0, 0.7)


#5
#hypergeometric 
# phyper(2, M, N-M, n)
# x 
# M is the successes 
# N (total) - M : the failures 
# n: sample size

dhyper(10, 35, 25, 15)

1 - phyper(9, 35, 25, 15) + 1 - phyper(9, 25, 35, 15)

#What are the mean value and standard deviation of the number of projects not 
#among these first 15 that are from the second section?

#N = 60
# M = 35
# n = 60 - 15 = 45

#6
#lambda = 4
ppois(4, 4)
ppois(3, 4)

ppois(7, 4) * (1 - ppois(3,4))

ppois(7, 4) - ppois(3,4)

ppois(7, 4)
1 - ppois(3,4)

1 - ppois(6,4)

#does not exceed the mean value by more than one standard deviation?
# <= mean + sd = 4 + 2 = 6
ppois(6,4)
