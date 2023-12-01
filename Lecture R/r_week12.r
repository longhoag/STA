# data
x <- c(132, 129, 120, 113.2, 105, 92, 84, 83.2, 88.4, 59, 80)
y <- c(46, 48, 51, 52.1, 54, 52, 59, 58.7, 61.6, 64, 61.4)

plot(x,y)

xbar <- mean(x)
ybar <- mean(y)

b1 <- sum((x - xbar)*(y - ybar))/sum((x - xbar)^2)

b0 <- (sum(y) - b1*sum(x))/length(x)

# estimates for slope and intercept respectively
b1; b0

# R can do the same with syntax of making a model as lm(response ~ predictor(s))
model <- lm(y ~ x)
coef(model)
summary(model)
# the residual standard error is a prediction for the error of the standard
#   deviation. 

abline(model, col="magenta", lwd=2)

rss <- sum((y - predict(model))^2); rss
tss <- sum((y - ybar)^2); tss

r2 <- 1 - (rss/tss); r2

# r, correlation coefficient
cor(x,y)
cor(y,x)

# if you want to predict on out-of-sample data using yhat:
predict(model, 
        newdata=data.frame(x=c(10, 20, 30, 35, -10))
        )
# the above plugs x=10, 20, 30, 35, and -10 into your regression equation.

# blue lines represent the residuals
for(i in 1:length(x)){
  lines(c(x[i], x[i]), 
        c(y[i], predict(model)[i]),
        col="blue"
  )
}
