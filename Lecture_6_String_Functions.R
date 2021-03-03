#Install stringr
library(stringr)
#Install gapminder package
install.packages("gapminder")
gDat <- gapminder::gapminder
str(gDat)

#Excercise 1
#Line of code for all countries with "ee"
gDat
gDat$country
country <- unique(gDat$country)
grep("ee", country, value = TRUE)
#Greece is the country with "ee" string