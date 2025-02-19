data <- read.csv("income.data.csv")

model1 <- lm(happiness ~ income, data = data)

summary(model1)

#plot data points
plot(data$income, data$happiness)
#plot regression line
abline(model1, col = "red")

###
### Problem 1 Questions
###

#get regression equation
coefficients(model1)
# 0.2042704   0.7138255    Equation: Happiness = 0.2043 + 0.7138 × Income

#get r^2
summary(model1)$r.squared
#output: [1] 0.7493218 The value indicates that income is a pretty strong predictor of happiness

#the coefficient B1 = 0.7138255 tells me that as income increases, so does happiness. Then also if income decreases, happiness does as well. 

##
## Problem 2
##

#calculate residuals 
residuals1 <- residuals(model1)

#plot residuals
plot(residuals1, main = "Residuals of Simple Linear Regression")

#calculate RSS and MSE for model
RSS1 <- sum(residuals1^2)
MSE1 <- mean(residuals1^2)

##
## Problem 2 Questions
##

#1 the residuals tell me the model is a good fit and there are not any obvious patterns to tell me otherwise

#2 The rss indicates that the model is a fairly good fit with some error but not a terribly high amount

#3 The mse reflects the prediction accuracy and is low indicating a high prediction accuracy

