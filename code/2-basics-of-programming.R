## cleaning up the environment


## Stripping whitespace
# R doesn't care about whitespace
5 * 5
5*5
5 *                   5
5 *
  
  
  5

## Closing parentheses and quotes
(5 + 1)
"This is a message"
5*5
10*10

## Variables (object)
a <- 5
name <- "Lukas"

5 * a
5 * 5

# my_age
my_age <- 30
# my_name
my_name <- "Lukas"

# your age in days
my_age_days <- my_age * 365
# in weeks
my_age_days/7


## Rules about variable assignments
MI6agent <- "James Bond"

7weeks <- 49 #FAIL
5* 5
5+6 <- "eleven"

## What i cannot use in variable names
### Math symbols
one+two <- "Three"
one <- 1
two <- 2
one+two

-
+
*
^
/

### Logical operators
& (AND)
| (OR)
> 
< - height<weight <- "GOOD"

### Hashtag
twitter#myspace <- "nice"


## R is case sensitive
number <- 5
Number <- 10
NUMBER <- 15
number == Number


## Task
## Create 5 incorrect variables and 5 correctly named variables
today <- "Monday"
today+1 <- "Tuesday"
this_year <- 2020
+year <- 2021
Saturday|Sunday <- "weekend"
#mycountry <- "Czech Republic"

## Alternative assignment =
today = "Monday"


# Functions -----
head()
help()

abs(-5)
log10(10)
log10(abs(-5))

abs(5, 5)
abs(5.015156)
abs("GOOD DAY")
?abs

?toupper
toupper("hello")
toupper(1)

?rnorm
hist(rnorm(1000, 0, 1), breaks = 20)
hist(rnorm(1000, 100, 1), breaks = 20)
hist(rnorm(1000, 100, 25), breaks = 20)
hist(rnorm(1000, 100, 25, 10), breaks = 20) #FAILS because only takes 3 arguments
hist(rnorm(1000), breaks=20)
