# Import tidyverse
library(tidyverse)

# Import mtcars
data("mtcars")

# Show head of mtcars
head(mtcars)

# add mtcars weight to weight in pounds 
mtcars <- mutate(mtcars, wt_lbs = wt * 1000)
mtcars

# group the data by gear and find mean wt_lbs as avg_wt
group_by_gear <- group_by(mtcars, gear)
group_by_gear

mean_wt_lbs_by_gear <- summarize(group_by_gear, avg_wt = mean(wt_lbs))
mean_wt_lbs_by_gear

# Find the average hp of cars over 3000 pounds
mt_cars_over_3000 <- subset(mtcars, wt_lbs > 3000)
mean(mt_cars_over_3000$hp)

# Find the value of carb with the highest avg mpg
mtcars %>%
  group_by(vs) %>%
  summarize(mean_mpg = mean(mpg)) %>%
  subset(mean_mpg == max(mean_mpg))


# Find the mean mpg per value in the vs column
