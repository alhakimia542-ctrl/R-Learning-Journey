# --- 1. Creating matrices and naming dimensions ---
mdat <- matrix(c(1, 2, 3, 11, 12, 13), 
               nrow = 2, ncol = 3, byrow = TRUE, 
               dimnames = list(c("row1", "row2"), c("C.1", "C.2", "C.3")))
mdat[1, ] # Extracting the entire first row
mdat[, 2] # Extracting the entire second column

# --- 2. Direct and conditional data modification ---
x1 <- 1:10
x1[3:5] <- 5       # Replacing elements from 3 to 5 with the value 5
x1[x1 == 10] <- 25 # Replacing any value equal to 10 with the value 25

# --- 3. Merging columns and multidimensional arrays ---
x <- c(2.3, 3.5, 6, 14, 12) 
y <- c(3, 2.5, 0.7, 1.3, 5) 
z <- cbind(x, y) # Binding the two vectors as columns
array(1:23, c(3, 4, 2)) # Three-dimensional array