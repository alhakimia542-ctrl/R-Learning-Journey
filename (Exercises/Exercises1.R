# ==========================================
# Exercise 3 Solutions
# ==========================================

# 1. Create the name vector containing the names of 10 people
name <- c("Ayham", "Sammer", "Sue", "Saeed", "Abdulhakim", "Omar", "Sara", "Mohamed", "Ali", "Mahdi")

# 2. Create the age vector (between 20 and 60) and assign names as labels
age <- c(22, 24, 21, 23, 25, 35, 22, 45, 23, 32)
names(age) <- name

# 3. Create the weight vector (between 50 and 100 kg) and assign names as labels
weight <- c(65, 55, 60, 58, 75, 85, 52, 90, 62, 88)
names(weight) <- name

# 4. Create the height vector and assign names as labels
height <- c(170, 160, 165, 162, 175, 180, 158, 178, 164, 182)
names(height) <- name

# 5. Create the heavy.weights vector (weight > 80)
heavy.weights <- weight[weight > 80]
heavy.weights

# 6. Create the height.heavy.weights vector (heights of people weighing > 80)
height.heavy.weights <- height[weight > 80]
height.heavy.weights

# 7. Create the height.old.heavy.weights vector (weight > 80 AND age > 30)
height.old.heavy.weights <- height[weight > 80 & age > 30]
height.old.heavy.weights


# ==========================================
# Exercise 4 Solutions
# ==========================================

# 1. Create the following vectors
label <- c("poids", "taille", "sexe")
x <- c(0, 12, 24, 36)
y <- c(2, 1, 5, 3, 6, 9, 5, NA)
z <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 13, 14, 15)

# 2. Display the mode and the length of label and y
mode(label)
length(label)
mode(y)
length(y)

# 3. Create vectors a, b, c, and l
a <- rep("a", 50)
b <- 100:200
c <- 200:100
l <- seq(from = -5, to = 5, by = 0.1)

# 4. List all objects, those containing 'n', and those starting with 'l'
ls()
ls(pattern = "n")
ls(pattern = "^l")

# 5. Delete the objects a, b, c, and l
rm(a, b, c, l)

# 6. Display elements of z greater than the mean of z
z[z > mean(z)]

# 7. Change values at positions 2, 5, and 7 of vector y
y[c(2, 5, 7)] <- c(12, 18, 9)
y

# 8. Create vector v from y by inserting components at positions 1 and 4 of z
v <- c(y, z[c(1, 4)])
v

# 9. Create vector r composed of y, z, first two elements of x, and numbers 3 and 4
r <- c(y, z, x[1:2], 3, 4)
r

# 10. Sort vector b (Recreating it first since it was deleted in step 5)
b <- 100:200
sort(b)