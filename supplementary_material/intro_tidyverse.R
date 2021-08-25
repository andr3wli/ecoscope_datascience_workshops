# This file contains the solutions for the intro to tidyverse exercises

library(tidyverse) # Easily Install and Load the 'Tidyverse'

# Load the data set
raw_data <- read_csv(file="data/Saanich_Data.csv",
                     col_names=TRUE,
                     na=c("", "NA", "NAN", "ND"))
dat <- raw_data

# B/c we will be manipulating the data further, first copy the data "dat" to practice data "pdat" so that what we do in the exercises
# does not impact the rest of the workshop.

pdat <- raw_data

# 3.4.4 Exercises

# first, subset the data to forst 16 depth observations
depth <- raw_data$Depth[1:16]

# Q1: Find the indices where depth is greater or equal to 0.055
depth >= 0.55

# Q2: check id the valie 0.111 is in the depth data
0.111 %in% depth

# Q3: Find where depth is less than 0.060 or is greater than 0.140
depth < 0.060 | depth > 0.140
