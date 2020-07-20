# Homeworks

All homeworks are due by Friday. Upload all the homeworks to the https://e.pcloud.com/#page=puplink&code=U1Zoyd8ePgsJm8nmpakPSlgI5aCWx9X

## Day 1

### Packages
Name the file [name]-packages.pdf

Choose a letter of the alphabet randomly and find somewhat relevant package at https://rdrr.io/ or go to https://www.r-pkg.org/ and browse through trending packages or find one that you find interesting.

1. Check the package description
2. Try to understand what the package is about - spend about 15-30 minutes with trying to comprehend what the package tries to solve
3. Install the package - try out some of it’s functionality as it is outlined in the documentation
4. Prepare brief report to report about tomorrow
5. Paste parts of functioning code which you tried - things from examples, vignettes etc.
6. Write a short report which you will submit
    a. what the package is about?
    b. What is the typical usecase fo the package.
    c. Did you understand the documentation? If not, why was it difficult to understand? What was easy to understand?
    
### Asking for help
Name the file [name]-asking-for-help.pdf

Imagine the imagionary function `calculate_correlation(series_a, series_b)` is 
a. returning zero for a two series for which function `cor()` returns 0.75. 
b. sometimes returns NA (Missing value)
c. It is erroring out, returns values above 1. 

Formulate proper questions with minimal working example, which you would post on stack overflow forums. Include all necessary information. If unsure about something, make it up :)

### Code style
Study the https://style.tidyverse.org/ 

Name the file [name]-code-style.R
1. Prepare the following examples and mix correct and incorrect together. We will go over some of them tomorrow. 
    a. Prepare 5 examples of correct and incorrect names for files. 
    b. Prepare 5 examples of correct and incorrect names for variables. 
    c. Prepare 5 exmaples of correct and incorrect spacing rules in relation to commas, parentheses and operators (+,/ etc.).
2. What is the rule about using semicolons?
3. What is the rule about line length? How can you set the visual mark in Rstudio?
4. What types of quotes can you use in defining characters and which style you should be using?
5. Rewrite the following code with a valid coding style

```r
#days in the year
value = 365
#days in week
value2 =7
#weeks in year
value3= round(value/ value2 , digits=0)
message= paste('Year has ', value , ' days. Each week has ', value 2, ' days. This means that the year has ',value3,' weeks.')
```