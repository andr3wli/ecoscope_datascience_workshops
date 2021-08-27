# section 2.6.1 exercises

# Q1: the data type is a string
# Q2: string
# Q3: int
# Q4: logical
# Q5: bool

# section 2.11 Additional exercises

# 2.11.1 Exercise 1: Install packages

# the r tidyverse workshop:
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("lubridate")) install.packages("lubridate")
if (!require("cowplot")) install.packages("cowplot")

# intermediate r programming workshop:
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("lmerTest")) install.packages("lmerTest")
if (!require("devtools")) install.packages("devtools")
if (!require("roxygen2")) install.packages("roxygen2")

# statistical models workshop:
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("broom")) install.packages("broom")
if (!require("plyr")) install.packages("plyr")
if (!require("lme4")) install.packages("lme4")
if (!require("car")) install.packages("car")
if (!require("lsmeans")) install.packages("lsmeans")
if (!require("MASS")) install.packages("MASS")
if (!require("faraway")) install.packages("faraway")
if (!require("gapminder")) install.packages("gapminder")
if (!require("HSAUR3")) install.packages("HSAUR3")

# reproducible research workshop:
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("packrat")) install.packages("packrat")

# 2.11.2 Exercise 2: calculating a probability curve
x <- 0.8
mu <- mean # mean
sigma <- 1 # standard deviation
1/(sigma*sqrt(2*pi)) * exp(-1/2*((x - mu)/sigma)^2)

dnorm(x, mu, sigma) # Confirm using R's built-in Normal PDF function

# Exercise 3: use the help function to learn how to flip coins
nr_tails <- rbinom(n = 3, size = 10, prob = 0.5)
mean(nr_tails)

nr_tails <- rbinom(n = 3000, size = 10, prob = 0.5)
mean(nr_tails)

nr_tails <- rbinom(n = 300000, size = 10, prob = 0.5)
mean(nr_tails)

# 2.11.4 Exercise 4: working with data

# Q1: Using an r function, determine what data typw the depth_m variable is

# first, we need to load the data set:
path <- "https://raw.githubusercontent.com/EDUCE-UBC/educer/main/data-raw/data_intro_ws.csv"
dat <- read.csv(path)

# then we can check what the variable is
class(dat$Depth_m)

# Q2: Using indexing and the square bracket operator: determine what depth value occurs
# in 20th row and return the observation (row) when oxygen equals 91.115 (hint use the subset() function)

# depth of the 20th observation
dat$Depth_m[20]

# observation for which equals 91.115
subset(dat, O2_uM == 91.115)

# Q3: subset the data to observations where depth is deeper than 100 m (hint use the subset() function)
subset(dat, O2_uM > 100)

# Q4: create a stacked scatterplot of oxygen concentrations within the 2 different seasons, coloured by whether or not microbial data
# are avalible

quickplot(data = dat,
          x = Season,
          y = O2_uM,
          colour = Add_data,
          main = "Saanich Inlet: Oxygen in Fall vs. Summer")

