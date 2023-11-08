#1 

one <- scan() #p(x)
o <- scan() # x

sum(one*o) # calculate E[x]

checkvar <- function(x, px) {
  
  e1 <- sum(x * px)
  e2 <- sum(x * x * px)
  
  result <- e2 - e1 * e1

  return(result)
}

checkvar(o, one) #--> variance 

sqrt(checkvar(o, one)) #--> square root of variance is sd

#2

t <- scan()
two <- scan()

sum(t * two)

120 * sum(t*t*two)

#3

th <- scan()
three <- scan()

checkvar(th, three)
sqrt(checkvar(th, three)) #sd

#mean 
sum(th * three)
49.02 - 2.437129
49.02 + 2.437129
#ceiling the lower number and floor the higher number 
# 47 -> 51
0.12	+ 0.14	+ 0.25	+ 0.17	+ 0.01

#4
f <- scan() 
four <- scan()

sum(f * four)
sum(f * f * four)
checkvar(f, four)

mean(65 * f - 650)

checkvar(65 * f - 650, four)

mean(f - 0.009 * f * f)

#5
fi <- scan()
five <- scan()

sum(fi * five)
sum((5 - fi) * five)

sum(150 * five / (5 - fi))

#6
dbinom(5, 8, 0.25)
dbinom(6, 8, 0.55)

dbinom(3, 7, 0.65) + dbinom(4, 7, 0.65) + dbinom(5, 7, 0.65)


dbinom(1, 9, 0.15) + dbinom(2, 9, 0.15) + dbinom(3, 9, 0.15) + dbinom(4, 9, 0.15) + dbinom(5, 9, 0.15) + dbinom(6, 9, 0.15)


#7

pbinom(8, 20, 0.7)
dbinom(8, 20, 0.7)
dbinom(10, 20, 0.3)

pbinom(8, 20, 0.7) - pbinom(4, 20, 0.7)

#at least 5 involve a single vehicle?
1 - pbinom(4, 20, 0.7)

dbinom(8, 20, 0.7) * dbinom(12, 12, 0.3)


#8
pbinom(4, 20, 0.05)
pbinom(3, 20, 0.05)

1 - pbinom(4, 20, 0.05)

pbinom(4, 20, 0.05) - pbinom(0, 20, 0.05)


20 * 0.05
20 * 0.05 * (1 - 0.05)
sqrt(0.95)

dbinom(0, 60, 0.05)


#9

pbinom(8, 20, 0.2)
dbinom(8, 20, 0.2)
1 - pbinom(7, 20, 0.2)
1 - pbinom(8, 20, 0.2)

#10
15 * 0.4
6 * 0.6
6 - 2*sqrt(3.6)
6 + 2*sqrt(3.6)
# 3 --> 9
1 - pbinom(9, 15, 0.4) 


#11
#at least 10 have no citations --> 10 , 11, 12 .. have no citations --> 1 - <= 9
1 - pbinom(9, 15, 0.4)
15/2
#< 7.5 --> <= 7
pbinom(7, 15, 0.6)

pbinom(10, 15, 0.6) - pbinom(4, 15, 0.6)

#12
100 * 0.3 * 0.7
100 * 0.8 * 0.2

#13


3/5
0.9 + 0.3

pbinom(1, 5, )

#14
#2-5 --> 5 - 1
0.96 - 0.28


#15
1 - 0.64
0.96 - 0.21
0.9 - .44
