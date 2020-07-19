## Example script
library(ggplot2)
head(mpg)
str(mpg)
summary(mpg)
g <- ggplot(mpg, aes(class))
g + geom_bar()
mpg <- ggplot2::mpg
cty_man_aov <- aov(cty ~ manufacturer, mpg)
summary(cty_man_aov)
g <- ggplot(mpg, aes(manufacturer, cty))
g + geom_boxplot()