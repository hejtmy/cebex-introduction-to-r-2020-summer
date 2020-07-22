df_happiness <- read.table("https://raw.githubusercontent.com/hejtmy/cebex-introduction-to-r-2020-summer/master/data/world-happinness/world-happiness.csv", 
                           header = TRUE, dec=".", sep = ",", stringsAsFactors = FALSE)


df_happiness <- df_happiness[, 2:11]
df_happiness$X <- NULL

# get the feel of the table
str(df_happiness)
## how many countries are there
length(unique(df_happiness$country))
## What types of variables we have
head(df_happiness)
## What is the range of GPD
range(df_happiness$GDP)
## What years did the questionnaire take place
length(unique(df_happiness$year))
## What is the the highest corruption country in 2017
i_2017 <- df_happiness$year == 2017
df_2017 <- df_happiness[i_2017, ]
head(df_2017[order(df_2017$corruption, decreasing = TRUE), ])
head(df_2017[order(-df_2017$corruption), ])

# Which year had the words GDP score average
mean(df_happiness[df_happiness$year == 2015, "GDP"])
mean(df_happiness[df_happiness$year == 2016, "GDP"])
mean(df_happiness[df_happiness$year == 2017, "GDP"])
mean(df_happiness[df_happiness$year == 2018, "GDP"])
mean(df_happiness[df_happiness$year == 2019, "GDP"])
# aggregate
?aggregate
aggregate(GDP ~ as.factor(year), data = df_happiness, mean)
aggregate(x = df_happiness$GDP, by = list(as.factor(df_happiness$year)), mean)
# DPLYR
df_happiness %>%
  group_by(year) %>%
  summarise(avg=mean(GDP))

# Which year did Sweden rank the best?
df_happiness[df_happiness$country == "Sweden", c("rank", "year")]

# What was the median freedom score in 2018
median(df_happiness[df_happiness$year == 2018, "freedom"])
median(df_happiness[df_happiness$year == 2018, ]$freedom)
median(df_happiness[df_happiness$year == 2018, ][["freedom"]])

# What was was the variance of health in 2017 and in 2018
var(df_happiness[df_happiness$year == 2017, "freedom"])
var(df_happiness[df_happiness$year == 2018, "freedom"])

## Exploratory graphs
df_2017 <- df_happiness[i_2017, ]
str(df_2017)
### Histogram
hist(df_2017$GDP)
summary(df_2017$GDP)
hist(df_2017$GDP, breaks = 20) # makes 20 linearly separated "bins"
hist(df_2017$GDP, breaks = c(0,1,2)) # separates values into blocks 0-1 and 1-2
hist(df_2017$GDP, breaks = c(1,2)) # Crashes because it doesn't know what to do with data between 0 and 1
hist_breaks <- seq(1, 2, by = 0.1)
hist(df_2017$GDP, breaks = c(0, hist_breaks)) # define custom breaks

library(ggplot2)
g <- ggplot(df_happiness, aes(x=GDP)) +
  geom_histogram(binwidth = 0.1) +
  xlab("GDP in a Coutry")

## Make a histogram of 2017 data of corruption
hist_breaks <- seq(min(df_2017$corruption), max(df_2017$corruption), length.out = 25)
hist(df_2017$corruption, breaks = hist_breaks)
hist(df_2017$corruption, breaks = 25)
# Change the X label to a good name
hist(df_2017$corruption, 
     breaks = 25,
     main = "Corruption factor in countries happines in 2017",
     xlab = "Corruption score",
     ylab = "")
# only focus on 0.1 and 0.15
hist(df_2017$corruption, xlim = c(0.0, 0.15), breaks = 25) 

## Create a histogram between 0 an 0.15 with at 15 breaks
# hist_breaks <- 0.00,0.01,0.02,0.03,.....0.015, 100
hist_breaks <- c(seq(0, 0.15, by = 0.01), 100)
hist(df_2017$corruption, xlim = c(0.0, 0.15), breaks = hist_breaks,
     ylab= "Frequency",
     xlab = "Corruption score",
     main = "Corruption factor in countries happines in 2017 (limited to 0-0.15)")

## 
hist(df_2017$social_support[df_2017$social_support > 0.5],
     breaks=25, col="#4a1989", border="#eed3bb")

## Create a histogram of Scores in 2017
hist(df_2017$score)
# Label axes properly
hist(df_2017$score, main="Happiness scores in 2017", xlab="Score", ylab="")
# color the graph nicely (change both col and border)
hist(df_2017$score, main="Happiness scores in 2017", xlab="Score", ylab="",
     col="#4a1989", border="#eed3bb")
# focus only on values between 4 and 6
hist(df_2017$score[df_2017$score > 4 & df_2017$score < 6], 
     main="Happiness scores in 2017", xlab="Score", ylab="",
     col="#4a1989", border="#eed3bb", breaks = 20)


## Boxplots
boxplot(df_2017$score)
boxplot(df_2017$score, df_2017$corruption)
boxplot(df_2017$freedom, df_2017$corruption, df_2017$health,
        names = c("Freedom", "Corruption", "Health"))

boxplot(df_2017$freedom, df_2017$corruption, df_2017$health,
        names = c("Freedom", "Corruption", "Health"), 
        col=c("grey", "white", "yellow"), border="black",
        width = c(0.2, 1, 0.3))

### FORMULA
boxplot(GDP ~ (score > 6), data=df_2017)
boxplot(GDP ~ year, data=df_happiness, main="QUARTILES of GPD per year")

## Scatter plots (point charts)
plot(df_2017$GDP, df_2017$score)
cor(df_2017$GDP, df_2017$score)

##
plot(df_2017$GDP, df_2017$score)
plot(df_2017$GDP, df_2017$score)

## Type Line
plot(df_2017$GDP, df_2017$score)
plot(rownames(datasets::airquality), datasets::airquality$Temp, type="p")
plot(rownames(datasets::airquality), datasets::airquality$Temp, type="l")

## Type of points
?points
plot(df_2017$score, df_2017$GDP, pch=16)

## Adding in features
points(df_2017$score, df_2017$freedom, pch=11, col="green")
points(df_2017$score, df_2017$health, pch=22, bg="yellow", col="pink")


## PAIRS
pairs(df_2017[, 3:9])


## Adding regression lines
lm_score_gdp <- lm(score ~ GDP, data = df_2017)
summary(lm_score_gdp)
plot(df_2017$GDP, df_2017$score)
abline(lm_score_gdp)
panel.smooth(df_2017$GDP, df_2017$score, lwd=2)

## Create a scatter plot of GDP on x axis and score on Y axis for year 2017
# Add "red" points to the plot for the year 2018
plot(df_2017$GDP, df_2017$score)
df_2018 <- df_happiness[df_happiness$year == 2018, ]
lm_score_gdp_2017 <- lm(score ~ GDP, data = df_2017)
lm_score_gdp_2018 <- lm(score ~ GDP, data = df_2018)
points(df_2018$GDP, df_2018$score, col="red")
abline(lm_score_gdp_2017)
abline(lm_score_gdp_2018, col="red")

plot # creates new
hist # creates new 
boxplot #creates


## Bar charts
tab_year <- table(df_happiness$year)
tab_year
barplot(tab_year)

tab_year_GDP <- table(df_happiness$year, df_happiness$GDP > 1)
tab_year_GDP
barplot(tab_year_GDP, beside = TRUE,
        names.arg = colnames(tab_year_GDP),
        legend=rownames(tab_year_GDP),
        col = c("yellow", "red", "green", "blue", "pink"),
        main = "Counts of countries with GDP > 1 in each year",
        horiz = TRUE)

## Multiple plots
