df_happiness <- read.table("https://raw.githubusercontent.com/hejtmy/cebex-introduction-to-r-2020-summer/master/data/world-happinness/world-happiness.csv", 
                           header = TRUE, dec=".", sep = ",", stringsAsFactors = FALSE)


df_happiness <- df_happiness[,2:11]
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
# Which year did Sweden rank the best?
# What was the median freedom score in 2018
# What was was the variance of health in 2017 and in 2018

