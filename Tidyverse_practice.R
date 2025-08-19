# Load tidyverse
library(tidyverse)

# 1. View the dataset
glimpse(mtcars)

# 2. Add a new column: weight in kg (wt is in 1000 lbs)
mtcars <- mtcars %>%
  mutate(wt_kg = wt * 453.592)

# 3. Filter for cars with mpg > 20
high_mpg <- mtcars %>%
  filter(mpg > 20)

# 4. Summarize average mpg by number of cylinders
mtcars %>%
  group_by(cyl) %>%
  summarize(
    avg_mpg = mean(mpg),
    count = n()
  )

# 5. Plot: MPG vs Weight (with color = number of cylinders)
ggplot(mtcars, aes(x = wt_kg, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  labs(
    title = "Fuel Efficiency vs Weight",
    x = "Weight (kg)",
    y = "Miles per Gallon",
    color = "Cylinders"
  ) +
  theme_minimal()
