#Crunch simple data
library(dplyr)

dat <- clean_covid
men <- filter(dat, Gender == "M")
dim(men)

women <- filter(dat, Gender == "F")
dim(women)

A <- filter(dat, 'ABO group' == "A*")
dim(A)
A
