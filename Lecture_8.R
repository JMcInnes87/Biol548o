#Exercise 1
#Create the following variables
w <- 10.2
x <- 1.3
y <- 2.8
z <- 17.5
colors <- c("red", "blue", "green")
masses <- c(45.2, 36.1, 27.8, 81.6, 42.4)
dna1 <- "attattaggaccaca"
dna2 <- "attattaggaacaca"

#1.w is greater than 10
w > 10
#True
#2. "green" is in colors
"green"%in% c("red", "blue", "green")
#True
#3. x is greater than y
x > y
#FALSE
#4. Each value in masses is greater than 40.
mass > 40
#True

#Exercise 2
age_class = "sapling"
if (age_class == "sapling"){
  y <- 10
}
y

#Exercise 3
#1
age_class <- "seedling"
if (age_class == "sapling") {
  y <- 10
} else if (age_class == "seedling") {
  y <- 5
}

#2.
age_class <- "seedling"
if (age_class == "sapling") {
  y <- 10
} else if (age_class == "seedling") {
  y <- 5
} else if (age_class == "adult") {
  
}

#Exercise 4 Dinosaurs 
get_mass_from_length_by_name<-function(name, length) {
  if (name == "Stegosauria") {
    10.95*length^2.64
  } else if (name == "Theropoda"){
    0.73*length^3.63
  } else if (name == "Sauropoda"){
    214.44*length^1.46
  } else {
    NA*length^NA
    
  }
}

#Run fuction for each dinosaur
get_mass_from_length_by_name("Stegosauria",10)
get_mass_from_length_by_name("Theropoda",8)
get_mass_from_length_by_name("Sauropoda",12)
get_mass_from_length_by_name("Ankylosauria",13)

  

  
  






  
