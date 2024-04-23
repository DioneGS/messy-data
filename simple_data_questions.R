#Crunch simple data
library(dplyr)

dat <- clean_covid
men <- filter(dat, Gender == "M")
dim(men)

women <- filter(dat, Gender == "F")
dim(women)

#blood types
A <- filter(dat, ABO_group == "A")
dim(A)
A
B <- filter(dat, ABO_group == "B")
dim(B)
AB <- filter(dat, ABO_group == "AB")
dim(AB)

#blood types disregarding contaminated
A_uncont <- filter(dat, ABO_group == "A" &! contaminated == "Y")
dim(A_uncont)

B_uncont <- filter(dat, ABO_group == "B" &! contaminated == "Y")
dim(B_uncont)

AB_uncont <- filter(dat, ABO_group == "AB" &! contaminated == "Y")
dim(AB_uncont)

#Rhesus
rhesusPos <- filter(dat, rhesus_group == "positive")
dim(rhesusPos)
?dim
nrow(rhesusPos)
rhesusNeg <- filter(dat, rhesus_group == "negative")
nrow(rhesusNeg)

#Universal (O-) donors
Universal <- filter(dat, rhesus_group == "negative" & ABO_group == "O")
nrow(Universal)

#average weight of AB men
weighedMen <- filter(dat, Gender == "M" & Weight_kg != "NA")
nmen <- nrow(weighedMen)
mean(weighedMen$Weight_kg)

#number per hospital
SaintLuc <- filter(dat, Hospital == "Saint-Luc")
Erasme <- filter(dat, Hospital == "Erasme")
Brugmann <- filter(dat, Hospital == "Brugmann")
numberPatients <- setNames(c(nrow(SaintLuc), nrow(Erasme), nrow(Brugmann)), c("Saint-Luc", "Erasme", "Brugmann"))
numberPatients
