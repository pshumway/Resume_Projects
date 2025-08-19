high_mpg <- mtcars[mtcars$mpg > 20, ]

# 1. Load a built-in dataset
data(mtcars)

# 2. Look at the first few rows
head(mtcars)

# 4. Plot horsepower vs. mpg
plot(mtcars$hp, mtcars$mpg,
     main = "Horsepower VS MPG",
     xlab = "Horsepower",
     ylab = "Miles Per Gallon",
     col = "blue")

# 4. Run a basic summary
summary(mtcars)

# 5. Save the filtered data
write.csv(high_mpg, "high_mpg_cars.csv", row.names = FALSE)
