# --- 1. Naming Matrix Dimensions using Lists ---
pie.vector <- c(0.12, 0.3, 0.6, 0.1, 0.4, 0.12) 
pie.mat1 <- matrix(pie.vector, ncol = 3) 
noms.col <- paste("C", 1:3, sep = "") # Creates C1, C2, C3
noms.lig <- paste("L", 1:2, sep = "") # Creates L1, L2
pie.liste <- list(noms.lig, noms.col) 

# Assigning names to the matrix dimensions
dimnames(pie.mat1) <- pie.liste 
pie.mat1 

# --- 2. Creating and Accessing Lists ---
# Lists can hold different types of data (strings, numbers, vectors)
lst <- list( 
  nom = "Bob", 
  epouse = "Alice", 
  no.enf = 3, 
  enf.age = c(4, 5, 9), 
  enf.nom = c("Albert", "Alain") 
) 

# Accessing elements
lst$epouse         # Access by name
lst$enf.age[2]     # Access specific element inside a vector within the list
lst[[2]]           # Extracts the second element itself
lst[2]             # Returns a list containing the second element

# Adding a new element to the list dynamically
nom.chien = "Edene" 
lst$nom.chien <- nom.chien  

# --- 3. Working Directory and Reading Files ---
getwd() # Display current working directory

# To change the working directory (uncomment and adjust path as needed)
# setwd("C:/Users/Owner/Documents")

# Reading a table from a text file (assuming 'table1.txt' exists)
# tab = read.table("table1.txt")
# tab[1, 3] <- 7 # Modifying data inside the imported table