# 1
size <- c(4,14,28,34,22,14,7,3,5,2)
sum(size)

(4 + 14 + 28 + 34) / sum(size)

(7 + 3 + 5 + 2) / sum(size)

#c
barplot(size/sum(size))

#d
barplot(size/(0.5 * sum(size)))


#2
contracts <- c(8,20,26,18,13,8,6,7,2,1)

(8+20+26+18) / sum(contracts)
sum(contracts[4:10]) / sum(contracts)

sum(contracts[4:9]) / sum(contracts)
sum(contracts[5:8]) / sum(contracts)


barplot(contracts / sum(contracts))


#3

par <- c(1,3,3,12,11,15,17,10,10,4,5,3,3,2,1)

sum(par[2:15]) / sum(par)
sum(par[6:15]) / sum(par)

sum(par[6:11]) / sum(par)
sum(par[7:10]) / sum(par)

barplot(par / sum(par))


#4

#5
load <- c(0,19.4,37.8,62.8,77.8,87.6,94.4,96.0,98.6,99.2,99.5,99.6,99.8,100.0)

diff(load)

barplot(diff(load)/100)


100-98.6
98.6 -77.8


#6

snow <- scan()
snow

#7
blood <- scan()

reported <- c(120, 125, 140, 130, 115, 125, 110, 130, 135)
median(reported)

130-127.9
125-127.4

#8 
crack <- scan()

mean(crack)
median(crack)

barplot(crack)
1.362-1.040

(1.009+1.040)/2

#9
4/10
auto <- c(0,0,1,1,0,1,0,1,0,0)
mean(auto)

25 * 0.56
14 - 4 

#10

poly <- scan()
diff(range(poly))

mean(poly)
sum((poly - mean(poly)) * (poly - mean(poly)))/11
sd

#11

alco <- scan()

median(alco)
mean(alco)

sv(alco)
sd(alco)

#12
oxd <- scan()

length(oxd)

sv <- function(data) {
  variance <- sum((data - mean(data)) * (data - mean(data)))/ (length(data) - 1)
  return(variance)
}

sv(oxd)
sd(oxd)

sv(oxd) / 3600
sd(oxd) / 60
