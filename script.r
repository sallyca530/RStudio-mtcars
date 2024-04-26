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
mean_wt_lbs_by_gear <- summarize(grouped_by_gear, avg_wt = mean(wt_lbs))
mean_wt_lbs_by_gear