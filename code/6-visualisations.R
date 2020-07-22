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
hist(df_2017$GDP, breaks = 20)
hist_breaks <- seq(1, 2, by = 0.1)
hist(df_2017$GDP, breaks = c(0, hist_breaks))

library(ggplot2)
g <- ggplot(df_happiness, aes(x=GDP)) +
  geom_histogram(binwidth = 0.1) +
  xlab("GDP in a Coutry")

