#Load the tidyverse package
library(tidyverse)

#load the small mammal survey data into Rstudio
surveys <- read_csv("data/surveys.csv")
surveys <- read_csv("data/surveys.csv")

#select a subset of columns
select(surveys, year, month, day)

#Select a subset of columns in different order
select(surveys, month, day, year)

#Combining to get conditional statements
filter(surveys, species_id == "DS")

#Add new columns with calculated values using mutate()
mutate(surveys, hindfoot_length_cm = hindfoot_length / 10)

#Storing and assigning as a new variable
surveys_plus <- mutate(surveys,
                       hindfoot_length_cm = hindfoot_length / 10)

#Overwriting existing variable
surveys <- mutate(surveys,
                  hindfoot_length_cm = hindfoot_length / 10)

#Loading shrub data
shrub_data <-read_csv("data/shrub-volume-data.csv")

#Checking column names using the names() function
names(shrub_data)

#Use the str() function to show the structure of the data frame
str(shrub_data)

library(dplyr)

#Selecting data for the length column
select(shrub_data,length)

#Selecting data for the site column
select(shrub_data,site)

#Filter data for plants with heights greater than 5
filter(shrub_data,height >5)

#mutate and add a new volume column 
mutate(shrub_data,shrub_data_w_vols)

#create a new data frame called shrub_data_w_vols
shrub_data_w_vol <-mutate(shrub_data, volume=length*width*height)

