##
list.files()

## Working directory
getwd()
list.files()

### Change working directory
setwd("data")
getwd()
list.files()
df_example <- read.table(file.path("..", "example-sep.txt"))
setwd("..")

### Relative path

"F:/Projects/Courses/cebex-introduction-to-r-2020-summer/example-sep.txt"
df_example <- read.table("example-sep.txt")

"F:/Projects/Courses/cebex-introduction-to-r-2020-summer/data/loading-examples/example-sep.txt"
df_example <- read.table("data/loading-examples/example-sep.txt")

# .. represents going one level up
setwd("data")
readLines("../code/2-5-coding-style.md")
setwd("..")

### Absolute path
df_example <- read.table("F:/Projects/Courses/cebex-introduction-to-r-2020-summer/example-sep.txt")

### Windows vs Linux+Mac+HTML
# \ windows
# / linux
file.path("data", "loading-examples")


## Practice
# Move all code files into folder code
# Move the example.txt files into folder data/loading-examples/
# set the working directory to data/loading-examples/
getwd()
setwd(file.path("data", "loading-examples"))
getwd()
list.files()
# run
df_example <- read.table("example-sep.txt")

# change the working directory back to "root"
setwd(file.path("..", ".."))
getwd()
# Change the loading command so that it works
df_example <- read.table(file.path("data", "loading-examples", "example-sep.txt"))

## Loading
df_example <- read.table(file.path("data", "loading-examples", "example-sep.txt"))
str(df_example)
head(df_example)
head(iris)

df_example <- read.table(file.path("data", "loading-examples", "example-sep.txt"),
                         sep=",")
str(df_example)
colnames(df_example)

## Pre R 4.0 you might need to change stringsAsFactors to be FALSE
df_example_sep <- read.table(file.path("data", "loading-examples", "example-sep.txt"),
                         sep=",", stringsAsFactors = FALSE)
str(df_example)

df_example_dec <- read.table(file.path("data", "loading-examples", "example-dec.txt"),
                         sep=";", stringsAsFactors = FALSE, dec = ",")


# Load the example-row.txt
# if it has more field than variable names, consider the first one as a row name
df_example_row <- read.table(file.path("data", "loading-examples", "example-row.txt"),
                             sep = ";", header = TRUE)
rownames(df_example_row)     

read.table()
write.table(df_example_sep, file = "example-sep-out.txt", sep = ",", dec = ".",
            row.names = TRUE)

# Saving files
## Beware of row names
write.table(USArrests, file = "arrests.txt", sep = ";", row.names = FALSE)
