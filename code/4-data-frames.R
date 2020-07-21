library(ggplot2)

# Math operations
mean()
median()
sd()
max()
min()
sum()
range(temperatures)
quantile()

## DATA FRAME ------
ls_person <- list(name = "Lukas", age = 30, children = c("Lukas 2", "Monika"))
ls_person$children

head(mpg)
View(mpg)

mpg <- mpg
mpg$manufacturer
mpg[["manufacturer"]]
mpg$model

head(mpg)
tail(mpg)
str(mpg)

?mpg

# Mean value of cylinders in cars
mean(mpg$cyl)
# Variance of city miles per gallon
var(mpg$cty)
# What is the range of highway miles per gallon
range(mpg$hwy)
min(mpg$hwy)
# What are the unique car manufacturers
unique(mpg$manufacturer)
# WHat is the amount of unique car manufactures in the dataset !
length(unique(mpg$manufacturer))
# Median number of cylinders
median(mpg$cyl)
# What is the frequency/counts of different types of cars
table(mpg$class)

summary(mpg)

## Knowing our dataframe
df_murder <- USArrests
str(df_murder)
colnames(df_murder)
rownames(df_murder)

summary(df_murder)

df_murder[1, ] # First row
df_murder[8, ] # 8th row
df_murder["Vermont", ]
df_murder[c(1,8),]
df_murder[c("Alabama", "Delaware"), ]


df_murder[, 1] # 1st column
df_murder[, 1] == df_murder$Murder
df_murder[, "UrbanPop"]
df_murder[, c(1, 4)]
df_murder[, c("Murder", "UrbanPop")]


df_murder[1, 1]

## What index is Hawaii at?
## What indices have murder rate above 10?
## What placese have urban population above 75?


## Give me Murder rate and Urban population for 
# 1. Penslyvania, Oregon and Virginia
# 2. All states which have Urban population above 75

