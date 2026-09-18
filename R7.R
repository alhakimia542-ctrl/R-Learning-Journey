sigmoid <- function(x) { 1 / (1 + exp(-x)) }

curve(sigmoid, from = -5, to = 5, 
      col = "blue", lwd = 2, 
      main = "Sigmoid Activation Function in AI",
      ylab = "Probability f(x)", xlab = "Inputs (x)")

abline(h = 0.5, col = "red", lty = 2, lwd = 2) 
abline(v = 0, col = "gray", lty = 3)  

x_poly <- seq(0, 5, length.out = 50)
y_poly <- sigmoid(x_poly)

polygon(c(0, x_poly, 5), c(0, y_poly, 0), 
        col = rgb(0, 1, 0, alpha = 0.2), 
        border = NA)

points(0, 0.5, col = "black", pch = 19, cex = 1.5)
text(1.5, 0.4, labels = "Decision Threshold (0, 0.5)", col = "black")

legend("topleft", 
       legend = c("Sigmoid Curve", "Threshold 0.5", "Positive Class"),
       col = c("blue", "red", "lightgreen"),
       lty = c(1, 2, NA), 
       pch = c(NA, NA, 15), 
       lwd = 2)