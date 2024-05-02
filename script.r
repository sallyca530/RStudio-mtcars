# Import tidyverse
library(tidyverse)

# Import ggplot2
library(ggplot2)

# Import mtcars
data("mtcars")

# Show head of mtcars
head(mtcars)

#1. plot cars vs mpg
mtcars$models = rownames(mtcars)
rownames(mtcars) = seq(1:nrow(mtcars))
plot(rownames(mtcars), mtcars$mpg, main="Car Model MPG",
     xlab="Model", ylab="MPG", col = rownames(mtcars))
# Create legend
legend("topright", legend = mtcars$models, col = rownames(mtcars), pch = 1)

n <- c("Mazda RX4", "Mazda RX4 Wag", "Datsun", "Hornet 4 Drive", "Hornet Sportabout","Valiant", 
       "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C"," Merc 450SE", "Merc 450SL","Merc 450SLC",
       "Cadillac Fleetwood", "Lincoln Continental", "Chrysler Imperial", "Fiat 128", "Honda Civic", "Toyota Corolla",
       "Toyota Corona", "Dodge Challenger", "AMC Javelin", "Camaro Z28", "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2",
       "Lotus Europa", "Ford Pantera L", "Ferrari Dino", "Maserati Bora", "Volvo 142E")
text(rownames(mtcars), mtcars$mpg, labels = row.names(mtcars), cex=0.6, pos=4, col="red")

plot(mtcars$mpg, col = 1:nrow(mtcars))
legend("topright", legend = rownames(mtcars), col = 1:nrow(mtcars), pch = 1)



#
plot(x = mtcars$mpg, mtcars$hp, col = rownames(mtcars))

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
