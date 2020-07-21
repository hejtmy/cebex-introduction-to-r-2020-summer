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

## What we cannot use in variable names
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

## Default arguments
# rnorm(n, mean = 0, sd = 1)
hist(rnorm(1000), breaks=20)
# mean = 0, sd = 25
hist(rnorm(1000, 0, 25), breaks = 20)
hist(rnorm(1000, mean = 0, sd = 25), breaks = 20)
hist(rnorm(1000, sd = 25), breaks = 20)

# mean = 100, sd = 1
hist(rnorm(1000, 100, 1), breaks = 20)
hist(rnorm(1000, mean = 100, sd = 1), breaks=20)
hist(rnorm(1000, mean = 100), breaks = 20)

hist(rnorm(1000, sd = 25), breaks = 20)
hist(rnorm(1000, 0, 25), breaks = 20)

seq(1,10,1)
seq(from = 1,to = 10, by = 1)

##
library(ggplot2)
head(mpg)

# Data types

## Atomic data types -----
### Numeric (floats/integers)
class(5)
class(5L)
5.00000010010
5

### Characters (strings)
class("hello")
character("5")

### Logical (boolean)
TRUE
TRUE <- "We are the champions of R"
FALSE
FALSE <- "We are lame"

T
F

T == TRUE
T <- "We are the champions of R"
T
T == TRUE
if ((5 > 0) == T){
  print("YES")
}
T <- TRUE
if ((5 > 0) == T){
  print("YES")
}

condtion <- TRUE

test_result <- 131
condition <- test_result > 100
condition


## Complex data types

### Vector
number <- 1
length(number)

numbers <- 1:10
class(numbers)
length(numbers)

### List
me <- list(name="Lukas", age=30, teaching=TRUE)
me_name <- "Lukas"
me_age <- 30
me_teaching <- TRUE

#### Accessing lists
me[["name"]]
me[["age"]]
me[["teaching"]]

me[[1]]
me[[2]]
me[[3]]

me$name
me$age
me$teaching

### Task - Setup a list
year <- list(n_days = 365,
             n_weeks = 52,
             n_months = 12,
             favorite_month = "December",
             favorite_day = "Saturday",
             good_year = FALSE)
#n_days (num)
#n_weeks (num)
#n_months (num)
#favorite_month (char)
#favorite_day (char)
#good_year (logical)

days_10_years <- 10 * year$n_days
weeks_in_year <- round(year[["n_days"]]/7, 0)
favorite_january <- year[["favorite_month"]] == "January"
favorite_Monday <- year$favorite_day == "Monday"

year$n_months <- 13
year$n_days_in_week <- 7

# Basic renaming
year$number_of_months <- year$n_months
year$n_months <- NULL

### Data Frame
# Nothing more than list of vectors
class(mpg)
head(mpg)
class(mpg$year)
mpg$cyl

## Factors
# are character vectors recoded as integers
f_manufacturer <- factor(mpg$manufacturer)
as.numeric(mpg$manufacturer)
as.numeric(f_manufacturer)
levels(f_manufacturer)

## Missing values
out <- abs("hello")
NA <- "North America"

vec <- 1:100
person1 <- 132
person2 <- 999
mean(c(person2, person1))
person2 <- NA
mean(c(person2, person1), na.rm = TRUE)

NULL

## What type it is
class(5)
is.na(NA)
is.na(5)
is.character(5)
is.logical(TRUE)

## Explicit conversions

as.character(5)
as.numeric("5")

as.character(TRUE)
as.numeric(TRUE)
as.numeric("five")
as.numeric("5.000")
as.logical(5)
as.logical(-210)
as.logical("ghuas")

## Implicit conversion

abs("five")
abs("5")

## w
c(1, 2, 3, 5, "hello")

as.numeric(TRUE)
as.numeric("float")

(logicals) == (numbers) -> "character"


## Comments
# This is a single line comment

#' Multiline comment
#' There is no benefit except it creates new multilines for me
#' and also signifies to be part of the same comment
