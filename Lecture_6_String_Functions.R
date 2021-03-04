#Install stringr
library(stringr)
#Install gapminder package
install.packages("gapminder")
gDat <- gapminder::gapminder
str(gDat)

#Exercise 1
#Line of code for all countries with "ee"
gDat
gDat$country
country <- unique(gDat$country)
grep("ee", country, value = TRUE)
#Greece is the country with "ee" string

#Finding All R Files in Main Folder
#Exercise 2
wd <- getwd()
dir(wd)
grep(".R$", dir(), value=TRUE)

#Excercise 3
grep('i|t', levels(gDat$country), value = TRUE)%>%
grep("land$", levels(gDat$country), value = TRUE)  

