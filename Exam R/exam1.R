#standard variance function
sv <- function(data) {
  variance <- sum((data - mean(data)) * (data - mean(data)))/ (length(data) - 1)
  return(variance)
}

#var(x)
#sd(x)

find_fs <- function(bplot) {
  fl <- bplot$stats[2]; fl
  fu <- bplot$stats[4]; fu
  fs <- fu - fl
  
  cat("fl: lower ", fl)
  
  cat("fu: upper ", fu)
  
  cat("Spread of fourths: ", fs)
}

find_outliers <- function(data){
  bp <- boxplot(data, horizontal=T)
  fl <- bp$stats[2]; fl
  fu <- bp$stats[4]; fu
  fs <- fu - fl
  
  mild_range <- c(fl - 1.5*fs, fu + 1.5*fs); mild_range
  ext_range  <- c(fl - 3*fs, fu + 3*fs); ext_range
  
  cat("Extreme Outliers: ", 
      data[which(data <=  ext_range[1] | data >=  ext_range[2])])
  
  cat("\n   Mild Outliers: ", 
      data[which((data <= mild_range[1] | data >= mild_range[2]) & 
                   !(data <= ext_range[1] | data >= ext_range[2]))
      ]
  )
}

checkvar <- function(x, px) {
  
  e1 <- sum(x * px)
  e2 <- sum(x * x * px)
  
  result <- e2 - e1 * e1
  
  return(result)
}

#checkvar() #--> variance 

#sqrt(checkvar()) #--> square root of variance is sd

#sum(one*o) # calculate E[x]

# dbinom(k, n, p) is the same as Pr(X=k) for b(x; n, p).
?dbinom

# pbinom(k, n, p) is the same as Pr(X <= k) with n and p. 
pbinom(5, 6, .75) - pbinom(1, 6, .75)

?dhyper
# dhyper(x, M, N-M, n)
dhyper(2, 5, 25-5, 10)

# Pr(X <= 2)
phyper(2, M, N-M, n)


#2
#a
1 - phyper(1, 12, 8, 5)

#3 
#b 
1 - pbinom(14, 25, 0.6)

#c
pbinom(12, 25, 0.4)

#e
pbinom(14, 25, 0.4) - pbinom(5, 25, 0.4)



?boxplot

data <- c(125, 188, 194, 221, 230, 251)
boxplot(data)

#5
1 - ppois(2, 2)
