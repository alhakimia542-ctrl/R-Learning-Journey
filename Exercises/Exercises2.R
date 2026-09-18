# ==========================================
# Exercise 3: Vectors, Labels, and Logic
# ==========================================

# 1-4: Creating vectors with labels (names)
names_vec <- c("Ahmed", "Ali", "Omer", "Sara", "Maha", "Khaled", "Zaid", "Nour", "Sami", "Rami")
age <- c(22, 45, 30, 28, 55, 40, 25, 35, 60, 50)
weight <- c(60, 85, 75, 55, 65, 90, 82, 70, 95, 88)
height <- c(170, 180, 175, 160, 165, 185, 178, 168, 190, 182)

# Assigning names as labels
names(age) <- names_vec
names(weight) <- names_vec
names(height) <- names_vec

# 5-7: Filtering data using conditions
heavy.weights <- weight[weight > 80]
height.heavy.weights <- height[weight > 80]
height.old.heavy.weights <- height[weight > 80 & age > 30]

# ==========================================
# Exercise 4: Object Management & Manipulation
# ==========================================

# 1. Creating Vectors
label <- c("poids", "taille", "sexe")
x <- c(0, 12, 24, 36)
y <- c(2, 1, 5, 3, 6, 9, 5, NA)
z <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 15)

# 2. Mode and length
mode(label); length(label)
mode(y); length(y)

# 3. Generating sequences and repetitions
a <- rep("a", 50)
b <- 100:200
c <- 200:100
l <- seq(-5, 5, by = 0.1)

# 4-5. Object management (Listing and removing)
ls()                 # List all objects
ls(pattern = "n")    # List objects containing 'n'
ls(pattern = "^l")   # List objects starting with 'l'
rm(a, b, c, l)       # Remove objects

# 6-10. Vector manipulation
z[z > mean(z)]                 # Elements of z > mean
y[c(2, 5, 7)] <- c(12, 18, 9)  # Change specific values in y
v <- c(y, z[c(1, 4)])          # Create vector v
r <- c(y, z, x[1:2], 3, 4)     # Create vector r
b_sorted <- sort(100:200)      # Sort vector

# ==========================================
# Exercise 5: Reading Files and Descriptive Stats
# ==========================================

# Assuming 'etudiants.txt' is in the working directory
my_data <- read.table("etudiants.txt", header = TRUE)
head(my_data)
nrow(my_data); ncol(my_data)
min(my_data$taille); max(my_data$taille)
table(my_data$sex)