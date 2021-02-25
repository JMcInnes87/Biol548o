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

#Grouped survey data by species_ID
group_by(surveys, species_id)

#Source, grouping, and data type information
surveys_by_species <- group_by(surveys, species_id)

#Use the summarize value to to calculate values for each group
summarize(surveys_by_species, abundance = n())

#Group by multiple columns
surveys_by_species_plot <- group_by(surveys, species_id, plot_id)
summarize(surveys_by_species, abundance = n())

#Using a single function to obtain a value from a vector
species_weight <- summarize(surveys_by_species, avg_weight = mean(weight))

#Fix NA quantity with following function:
mean(weight, na.rm = TRUE)
species_weight <- summarize(surveys_by_species,
                            avg_weight = mean(weight, na.rm = TRUE))

#Use the na.omit(species_weight) function to omit species with Nan weight measures
na.omit(species_weight)

#Determining the weight of species DS in each year
ds_data <- filter(surveys, species_id == "DS")
ds_data_by_year <- group_by(ds_data, year)
ds_weight_by_year <- summarize(ds_data_by_year,
                               avg_weight = mean(weight, na.rm = TRUE))

#For the survey data create a new data frame using the select function with just the year, month, day, and species id
select(surveys, year, month, day, species_id)

#create a new data frame with the year, species_id, and weight in kilograms of each individual, with no null weights. The weight in the table is given in grams so you will need to divide it by 1000.
mutate(surveys,year, species_id=weight /1000)
select(surveys,year, species_id, weight)
na.omit(species_weight)

#use the filter function to get all rows in the data frame for the species ID
filter(surveys, species_id == "SH")

#Use the group by function to and summarize function to get a count of the number of individual species
group_by(surveys,species_id)
summarize(surveys, species_id)
sumarize(surveys, NL)
surveys_by_species_plot <- group_by(surveys, species_id, plot_id)
summarize(surveys_by_species, abundance = n())

#use the group_by() and summarize functions functions to get a count of the number of individuals in each species ID in each year
ds_data <- filter(surveys, species_id == "DS")
ds_data_by_year <- group_by(ds_data, year)
ds_weight_by_year <- summarize(ds_data_by_year,
                               avg_weight = mean(weight, na.rm = TRUE))

#Exercise 3: Use pipes to work through survey data
surveys %>%
mutate(year, species_id=weight/1000)%>%
na.omit() %>%
select(year,month, day, species_id)%>%
filter(species_id =="SH")%>%
group_by(species_id)%>%
summarize(species_id, abundance = n())%>%
filter(species_id == weight)
  