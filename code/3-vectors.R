# Vectors

## Combine
c()
numbers <- c(1, 8, -5, 1, 0, 3.4, 1000)
c(numbers, numbers)

numbers1 <- c(0,2,4,6,8,10,12,14,16,18,20) # even numbers from 0-20
numbers2 <- c(1,3,5,7,9,11,13,15,17,19) # odd number from 1-19

all_numbers <- c(numbers1, numbers2)

# Sequence ---------
numbers100 <- seq(1,100)
numbers100 <- seq(to=100)

all(seq(1,100) == seq(to=100))

?seq
seq(from=1,to=100,by=2) # Odd numbers from 1 to 100

seq(0,1,length.out = 25) # 25 values between 0 and 1

# Repeat ----------
?rep
ten_tens <- rep(10,10)

# "test","test" (10 times), "control", "control" (10 times).... (length 20)
c(rep("test", 10), rep("control", 10))

# "test", "control", "test", "control" .... (length 20)
condition <- rep(c("test", "control"), 10)
condition

## Task

# Create vector of 5 cities called cities with 5 EU capitals. It must include Prague
# Create vector temperatures of human temperature from 36.3 to 40.5 with 0.1 steps
# create vector roulette_numbers with numbers from 0 to 36
# Create vector called roulette_colors with “green” and then 18 times “red” and “black”

roulette_colors <- c("green", rep(c("red", "black"), 18))
# create vector called weekdays with each day of the week
# create vector called weekdays_10 which is days in 10 weeks consecutively
# Crete vector of odd numbers call odd_numbers with numbers from 1 to 99
# Create vector of length 100 called true_false (T, F, T, F, T, F, T, F …)