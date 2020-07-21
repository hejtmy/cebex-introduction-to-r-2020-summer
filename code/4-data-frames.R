library(ggplot2)

# Math operations ----------------
#' mean()
#' median()
#' sd()
#' max()
#' min()
#' sum()
#' range()
#' quantile()

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

# Knowing our dataframe -----------
df_murder <- USArrests
str(df_murder)
colnames(df_murder)
rownames(df_murder)

summary(df_murder)


# Subsetting ---------------
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
which(rownames(df_murder) == "Hawaii")
df_murder[rownames(df_murder) == "Hawaii", ]
## What indices have murder rate above 10?
which(df_murder$Murder > 10)
## What states have urban population above 75?
rownames(df_murder)[df_murder$UrbanPop > 75]

## Give me Murder rate and Urban population for 
# 1. Penslyvania, Oregon and Virginia
df_murder[c("Pennsylvania", "Oregon", "Virginia"), c(1,3)]
df_murder[c("Pennsylvania", "Oregon", "Virginia"), c("Murder", "UrbanPop")]
# 2. All states which have more than average urban population
mean_pop <- mean(df_murder$UrbanPop)
rownames(df_murder)[df_murder$UrbanPop > mean_pop]
df_murder[df_murder$UrbanPop > mean_pop, ]

top_10percent_assault <- quantile(df_murder$Assault, probs = 0.9)
top_10_cutoff <- sort(df_murder$Assault, decreasing = TRUE)[10]

df_murder[df_murder$Assault >= top_10_cutoff, ]
df_murder[df_murder$Assault >= top_10percent_assault, ]

# Ordering -----------------
View(df_murder)
df_murder$Murder
order_murder <- order(df_murder$Murder, decreasing = TRUE)
df_murder[c(2, 1),]
df_murder[order_murder, ]
head(df_murder[order_murder, ])

## Output first 6 countries with the most population
head(df_murder[order(df_murder$UrbanPop, decreasing = TRUE), ])
## Ouput the safest 5 countries in relation to assault rates


# Complex subsetting -------------------

## Selecting country which is in SOME bottom 10
bottom_10_cutoff_assault <- sort(df_murder$Assault)[10]
bottom_10_cutoff_murder <- sort(df_murder$Murder)[10]

i_safe <- which(df_murder$Assault <= bottom_10_cutoff_assault |
                  df_murder$Murder <= bottom_10_cutoff_murder)
df_murder[i_safe,]
length(i_safe)

# Selecting countries which are in both bottom 10
i_total_safe <- which(df_murder$Assault <= bottom_10_cutoff_assault &
                  df_murder$Murder <= bottom_10_cutoff_murder)
df_murder[i_total_safe,]

#' Select countries which are in the top 10 in Murder and Assault and 
#' Urban population is below average
top_10_cutoff_assault <- sort(df_murder$Assault, decreasing = TRUE)[10]
top_10_cutoff_murder <- sort(df_murder$Murder, decreasing = TRUE)[10]
urban_pop_average <- mean(df_murder$UrbanPop)

i_test <- df_murder$Assault >= top_10_cutoff_assault &
            df_murder$Murder >= top_10_cutoff_murder &
            df_murder$UrbanPop < urban_pop_average
df_murder[i_test, ]

# Creating custom data frames --------
df_custom <- data.frame(names="Lukas", children="Lukas 2")
rownames(df_custom)
colnames(df_custom)

df_custom <- data.frame(names = c("Lukas", "Martin"),
                        children = c("Lukas 2", "Monika", "Martin", "Oliver"),
                        check.rows = TRUE)
roulette_numbers <- 0:36
# Create vector called roulette_colors with “green” and then 18 times “red” and “black”
roulette_colors <- c("green", rep(c("red", "black"), 18))

df_roulette <- data.frame(colors=roulette_colors,
                          numbers=roulette_numbers,
                          stringsAsFactors = FALSE)

## Modifying data.frames
df_roulette[1, "colors"] <- "blue"
head(df_roulette)

df_roulette[df_roulette$colors == "black", "colors"] <- "blue"
