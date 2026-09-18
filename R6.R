x <- c(1, 2, 3, 4, 5)
y <- c(60, 75, 82, 90, 95)

plot(x, y, 
     col = "blue", 
     pch = 16, 
     cex = 1.5, 
     xlab = "", ylab = "")

lines(x, y, col = "red", lwd = 2, lty = 2)

title(main = "Effect of Study Hours on Model Accuracy", 
      xlab = "Study Hours", 
      ylab = "Model Accuracy (%)", 
      col.main = "darkblue")

text(x = 4, y = 85, labels = "Notable Improvement Point", col = "darkgreen")

box(col = "black", lwd = 2)