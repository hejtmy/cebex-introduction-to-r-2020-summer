mpg <- ggplot2::mpg
head(mpg)
tail(mpg)
str(mpg)
colnames(mpg)
?mpg

table(mpg$year)
mpg_2017 <- mpg[mpg$year == 2017,]

sum(mpg$manufacturer == "audi")
hist(mpg[mpg$manufacturer == "audi", ]$cty, breaks = 12)
hist(mpg$cty, breaks = 12, col="grey", xlab = "City miles per gallon", main="")

mpg[mpg$cty > 30, c("manufacturer", "class")]
quantile(mpg$cty)

least_economic_cars <- mpg[mpg$cty < 14, c("manufacturer", "class")]
table(least_economic_cars$manufacturer)

table(mpg$trans)

mean(mpg$cty[mpg$trans=="auto(l4)"])
mean(mpg$cty[mpg$trans=="manual(m5)"])

boxplot(mpg$cty[mpg$trans=="auto(l4)"], mpg$cty[mpg$trans=="manual(m5)"], 
        names = c("automatic", "manual"))
