## Task for the coffee break

# Start a new project -
# Switch between projects - 
# Change the theme of R studio
# CHange font size to something you can actually read well
# Change the margin of code to 80 characters

((4 * 10) %% 3 ) ^ 10
version

## Packages ------

# Install ggplot
install.packages("ggplot2")
# install dplyr
install.packages("dplyr")

library("ggplot2") # POSSIBLE but not recommended
library(ggplot2) # GOOD
library(dplyr)

sessionInfo()
packageVersion("ggplot2")

## Example script -----
library(ggplot2)
mpg <- ggplot2::mpg
head(mpg, n = 1)
str(mpg)
summary(mpg)

g <- ggplot(mpg, aes(class))
g + geom_bar()
g <- ggplot(mpg, aes(manufacturer, cty))
g + geom_boxplot()
cty_man_aov <- aov(cty ~ manufacturer, mpg)
summary(cty_man_aov)

## GETTING HELP -----

?head
help(head)

?rnorm
