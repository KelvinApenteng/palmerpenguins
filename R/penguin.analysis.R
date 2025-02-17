# Installing the package 
install.packages("palmerpenguins")

# Load the package
library(palmerpenguins)

# View the first few rows
head(penguins)
setwd("C:/Users/User/Documents/GitHub/palmerpenguins")

#Calculating Numeric Mean
numeric_means <- apply(penguins[, sapply(penguins, is.numeric)], 2, mean, na.rm = TRUE)
print(numeric_means)

#Output
#> numeric_means <- apply(penguins[, sapply(penguins, is.numeric)], 2, mean, na.rm = TRUE)
#> print(numeric_means)
#bill_length_mm     bill_depth_mm flipper_length_mm       body_mass_g              year 
#43.92193            17.15117         200.91520            4201.75439        2008.02907 

#Counting Penguins by Species
species_counts <- tapply(penguins$species, penguins$species, length)
print(species_counts)

#Output
#> species_counts <- tapply(penguins$species, penguins$species, length)
#> print(species_counts)
#Adelie Chinstrap    Gentoo 
#152        68       124

#Analyzing Bill Length by Species
bill_length_means <- lapply(split(penguins$bill_length_mm, penguins$species), mean, na.rm = TRUE)
print(bill_length_means)

#Output
#> bill_length_means <- lapply(split(penguins$bill_length_mm, penguins$species), mean, na.rm = TRUE)
#> print(bill_length_means)
#$Adelie
#[1] 38.79139

#$Chinstrap
#[1] 48.83382

#$Gentoo
#[1] 47.50488

#Creating a Summary Table
summary_table <- sapply(penguins[, sapply(penguins, is.numeric)], function(x) 
  c(mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)))
print(summary_table)

#Output
#> summary_table <- sapply(penguins[, sapply(penguins, is.numeric)], function(x) 
#  +   c(mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)))
#> print(summary_table)
#       bill_length_mm bill_depth_mm flipper_length_mm body_mass_g         year
#mean      43.921930     17.151170         200.91520   4201.7544      2008.0290698
#sd         5.459584      1.974793          14.06171    801.9545        0.8183559