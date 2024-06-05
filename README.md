# RStudio-mtcars

## Overview

The mtcars dataset is a built-in dataset in R that contains information about 32 automobiles from the 1974 Motor Trend US magazine. The data is formatted as a data frame with 32 observations on 11 numeric variables:

    mpg: Miles per gallon
    cyl: Number of cylinders
    disp: Displacement in cubic inches
    hp: Gross horsepower
    weight: Weight in 1000 lbs
    qsec: 1/4 mile time
    vs: Engine shape, either "V" or straight
    am: Transmission, either automatic or manual
    gear: Number of forward gears
    carb: Number of carburetors


## Imports


    # Import tidyverse
    library(tidyverse)

    # Import ggplot2
    library(ggplot2)

    # Import mtcars
    data("mtcars")




## Analysis


**Display the first five rows of the data set.**

    # Show head of mtcars
    head(mtcars)

**Show the mean of the hp column.**

**Store the weight of each car in pounds by multiplying the `wt` column by 1,000.**

**Group the data by gear and find the mean `wt_lbs` as `avg_wt`.**

**Find the average hp of cars over 3,000 pounds.**

**Find the value of `carb` with the highest average mpg.**

**Find the mean mpg per value in the `vs` column.**

**Find the median number of cylinders and max mpg for each value in the `gear` column.**



