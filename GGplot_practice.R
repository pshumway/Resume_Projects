library(tidyverse)


mtcars_filtered <- mtcars %>% 
  group_by(cyl) %>%
  summarize(avg_mpg = mean(mpg)
            )

ggplot(mtcars_filtered, aes(x = factor(cyl), y = avg_mpg)) +
  geom_col(fill = "blue") +
  labs(
    title = "Average MPG by Cylinder Count",
    x = "Cylinders",
    y = "Average MPG"
  ) +
  theme_minimal()

