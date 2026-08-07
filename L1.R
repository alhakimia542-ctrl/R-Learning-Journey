# --- 1. Defining variables in multiple ways ---
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
c(10.4, 5.6, 3.1, 6.4, 21.7) -> x

# --- 2. Creating numeric sequences ---
seq_basic <- 1:12
seq_advanced <- seq(from = 20, to = 40, by = 5)

# --- 3. Basic arithmetic operations ---
y <- c(3, 2.5, 0.7, 1.3, 5)
result <- (x + y) / 2
result