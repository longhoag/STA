#1

x <- c(47,63,64,70,70,78,95,100,114,118,124,127,140,140,140,150,152,164,198,221)
y <- c(39,63,53,66,83,79,93,106,117,116,127,114,134,139,142,170,149,154,200,215)

plot(x, y)

#2
x2 <- c(59,63,68,72,74,78,83)
y2 <- c(118,182,247,208,197,135,132)
plot(x2, y2)

#3
#y = 1,750 + 1.1x.
1750 + 1.1 * 2510
110 * 1.1

#4
x4 <- c(173,175,176,177,177,178,179,180,183,183,183,183,183,184,184,185,185,185,185,187,187,188,189,191)
y4 <- c(0.94,1.27,1.36,1.07,1.11,1.04,0.98,1.72,1.47,1.64,1.67,2.05,2.05,0.92,1.45,0.96,1.75,2.00,2.72,1.51,2.62,2.96,1.89,3.02)

plot(x4, y4)

b1cal <- function(x, y) {
  xbar <- mean(x)
  ybar <- mean(y)
  b1 <- sum((x - xbar)*(y - ybar))/sum((x - xbar)^2)
  
  return(b1)
}

b0cal <- function(x, y, b1) {
  b0 <- (sum(y) - b1*sum(x))/length(x)
  
  return(b0)
}

b1cal(x4, y4)
b0cal(x4, y4, b1cal(x4, y4))

0.09463294 * 185 -15.59676


residual_cal <- function(b0, b1, yi, xi) {
  result <- yi - (b0 + b1 * xi)
  
  return(result)
}
residual_cal(-15.59676, 0.09463294, 185, 0.96)
residual_cal(-15.59676, 0.09463294, 185, 1.75)
residual_cal(-15.59676, 0.09463294, 185, 2)
residual_cal(-15.59676, 0.09463294, 185, 2.72)

?lm

model <- lm(y4 ~ x4)
residuals(model)
?abline

abline(model, col="magenta", lwd=3)

rss <- sum((y4 - predict(model))^2); rss
tss <- sum((y4 - mean(y4))^2); tss

r2 <- 1 - (rss/tss); r2

r2_cal <- function(y, model) {
  rss <- sum((y - predict(model))^2); rss
  tss <- sum((y - mean(y))^2); tss
  
  r2 <- 1 - (rss/tss); r2
  
  return(r2)
}

#5
x5 <- c(112.3,97.0,92.7,86.0,102.0,99.2,95.8,103.5,89.0,86.7)
y5 <- c(74.8,71.2,58.2,48.7,74.4,73.7,67.8,59.7,57.5,48.5)

model5 <- lm(y5 ~ x5)
coefficients(model5)

r2_cal(y5, model5)
cor(x5, y5)
cor(y5, x5)

summary(model5)

#6
x6 <- c(100,125,125,150,150,200,200,250,250,300,300,350,400,400)
y6 <- c(150,140,180,210,190,320,280,400,430,440,390,600,610,670)

model6 <- lm(y6 ~ x6)
rss6 <- sum((y6 - predict(model6))^2)
rss6

tss6 <- sum((y6 - mean(y6))^2); tss6

r2_cal(y6, model6)
