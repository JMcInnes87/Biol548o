#Lecture 7
#Excercise 1

#Convert weight in pounds to grams
pounds_to_grams <- function(weight) {
weight_in_grams <- weight * 453.592
return(weight_in_grams)
}
#Use that function to calculate how many grams there are in 3.75 pounds.
pounds_to_grams(3.75)
[1] 1700.97

#Exercise 2

#Function for calculating mass from length

get_mass_from_length_theropoda <- function(length){
  mass <- 0.73 * length ^ 3.63
  return(mass)
}
#This function calculates the mass of an object from the length of an object. In this example the mass of a theropod dinosuar from the length.
#Calculate the mass of a 16 m spinosaurus using the function
get_mass_from_length_theropoda(16)
#[1] 17150.56

get_mass_from_length <- function(length, a, b){
  mass <- 0.73 * length ^ 3.63
  return(mass)
}
get_mass_from_length(26, 214.44, 1.46)

#Excercise 3
#Estimate the mass of Sauropoda

get_mass_from_length_set <- function(length, a = 16, b = 1.46){
  mass <- a * length ^ b
  return(mass)
}
get_mass_from_length_set
