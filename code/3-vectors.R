set.seed(0)
# Vectors

## Combine
c()
numbers <- c(1, 8, -5, 1, 0, 3.4, 1000)
c(numbers, numbers)

numbers1 <- c(0,2,4,6,8,10,12,14,16,18,20) # even numbers from 0-20
numbers2 <- c(1,3,5,7,9,11,13,15,17,19) # odd number from 1-19

all_numbers <- c(numbers1, numbers2)

# Sequence ---------
numbers100 <- seq(1, 100)
numbers100 <- seq(to=100)

all(seq(1,100) == seq(to=100))

?seq
seq(from=1, to=100, by=2) # Odd numbers from 1 to 100

seq(0, 1, length.out = 25) # 25 values between 0 and 1

## SEQUENCE SHORTHAND
1:10 == seq(1,10)
100:105

# Repeat ----------
?rep
ten_tens <- rep(10, 10)

# "test","test" (10 times), "control", "control" (10 times).... (length 20)
c(rep("test", 10), rep("control", 10))

# "test", "control", "test", "control" .... (length 20)
condition <- rep(c("test", "control"), 10)
condition

## Task

# Create vector of 5 cities called cities with 5 EU capitals. It must include Prague
cities <- c("Madrid", "Berlin", "Prague", "Paris", "Bratislava")
# Create vector temperatures of human temperature from 36.3 to 40.5 with 0.1 steps
temperatures <- seq(36.3, 40.5, 0.1)
# create vector roulette_numbers with numbers from 0 to 36
roulette_numbers <- seq(0, 36) # SOMETHING EXTRA
roulette_numbers <- 0:36
# Create vector called roulette_colors with “green” and then 18 times “red” and “black”
roulette_colors <- c("green", rep(c("red", "black"), 18))
# create vector called weekdays with each day of the week
weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturady", "Sunday")
# create vector called weekdays_10 which is days in 10 weeks consecutively
weekdays_10 <- rep(weekdays, 10) # CAN BE SIMPLIFiED
# Crete vector of odd numbers call odd_numbers with numbers from 1 to 99
odd_numbers <- seq(from = 1, to = 99, by = 2)
# Create vector of length 100 called true_false (T, F, T, F, T, F, T, F …)
true_false <- rep(c(TRUE, FALSE), 50)

## Randomizing
sample(roulette_numbers, size = 10)
sample(cities, size = 5, replace = FALSE)

## 
sample(cities, size = 1, prob = c(1,0,0,0,0))
sample(cities, size = 5, prob = c(0.9,.025,.025,.025,.025))

## How to sample and get the same reuslt multiple times?
table(sample(roulette_numbers, size = 20))
table(sample(roulette_numbers, size = 20, replace = TRUE))

## Task
# sample temperature of 5 people
sample(temperatures, 5, replace = TRUE)
# select a city to host olympics
sample(cities, 1)
# randomize order of your favorite cities
sample(cities)
# sample 10 roulette_colors
sample(roulette_colors, 10, replace = TRUE)
# sample 10 roulette_numbers and set them to winning_numbers 
winning_numbers <- sample(roulette_numbers, 10, replace = TRUE)

## SEEDING
set.seed(1)
sample(roulette_colors, 10, replace = TRUE)

set.seed(666)
sample(roulette_numbers, 10, replace = TRUE)

## Acces
winning_numbers

roulette_colors

# R has 1 based indexing
letters
letters[1]
letters[4]

l_letters <- length(letters)
letters[26]
letters[l_letters]

letters[c(1, 2)]
letters[1:5]

letters[c(1,1,2,1,1)]


# Select all mondays from the weekdays_10
weekdays_10[c(1, 8)]
# select Prague from cities
# Select Prague 10 times
"Prague" "Prague". .....
# select all FALSE from true_false
# select all black NUMBERS from the rouletter numbers
# What color is number 0
roulette_colors[1]
# set seed to 100, randomize 10 roulette numbers and get their colors
roulette_numbers
roulette_colors[11]


