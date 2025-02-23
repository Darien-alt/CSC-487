# Load mtcars dataset
data(mtcars)

# Get correlation
correlation_value <- cor(mtcars$mpg, mtcars$wt)

# Plot
plot(mtcars$wt, mtcars$mpg)