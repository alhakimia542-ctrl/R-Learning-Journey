# --- 1. Repeating values within vectors ---
pip.vector <- c(3, 6, 3)
rep(pip.vector, 12)
r <- rep(1, 150)

# --- 2. Merging vectors and data types ---
a <- rep(3, 8) 
b <- rep(6, 7) 
c <- rep(4, 5)
combined_vector <- c(a, b, c)
serie2 <- c("Omer", "ahmed ", ali"abdulhakim")

# --- 3. Indexing and filtering data ---
x11 <- c(2.3, 3.5, 6, 14, 12)
x11[c(1, 5)]     # Extracting the first and fifth elements
x11[-c(2, 3)]    # Excluding the second and third elements
x11[x11 > 4]     # Extracting values greater than 4 only