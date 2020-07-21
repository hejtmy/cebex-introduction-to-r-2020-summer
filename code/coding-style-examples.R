## Valid variable names
name <- "Lukas"
name_variable <- 5
.7variable <- 5
  .name_variable <- 5
variable7 <- 7

v7 <- 7
v7 = 7

ls_person <- list(name = "Lukas", age = 30)
df_mpg <- ggplot2::mpg
ls.person <- ls_person

variable(
)
 5+
5+
5

5+
  5+
  5

5

name.variable
ls_person$name

is.numeric()
as.character(5)


## Assignmens should be with <-
NiceColor = "blue"
nice_color <- "blue"

nicecolor = "red"

## Beware of setting T to sth. else
TRUE == T
T <- "pink"
TRUE == T
T <- TRUE
TRUE <- "pink"


## Spacing rules
average <- mean( 2 + 4 )/2 # BAD
average <- mean(2 + 4)/2 # GOOD

nice_color <- "blue,pink" # spaces in the character part of the value
nice_colors <- c("blue", "pink") # CORRECT
nice_colors <- c("blue" , "pink") # INCORRECT

## Code to fix
days_in_year <- 365
days_in_week <- 7
weeks_in_year <- round(value/value2, digits = 0)

# Separating into multiple lines
message <- paste("Year has ", days_in_year , " days. ", 
                 "Each week has ", days_in_week, " days. ",
                 "This means that the year has ", weeks_in_year, " weeks.")

## Using quotes
tommy_dialog <- "Tomy said 'My mum is not at home'"
tommy_dialog2 <- 'Tommy said to me "This is not the time"'
cat(tommy_dialog2)

# Creating fields at new lines for better readibility
ls_person <- list(name = "Lukas",
                  age = 30,
                  is_czech = TRUE,
                  is_student = TRUE,
                  wears_trousers = TRUE)

