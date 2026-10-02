cat("\014") 
rm(list = ls())


par(oma = rep(2, 4), mar = rep(2, 4), bg = "grey60")
plot.new()
par(mfrow = c(3, 3)) 

for (i in 1:3) {
  par(mfg = c(i, i)) 
  rect(-2, -2, 3, 3, col = "red") 
  text(0.5, 0.5, label = paste("graphe n", i), cex = 1.5) 
}


dev.off(); plot.new() 

par(oma = rep(2, 4), mar = rep(2, 4), bg = "grey80")
split.screen(c(3, 3)) 

for (i in 1:9) {
  screen(i) 
  box("figure", lty = "dashed", col = "red")
  par(xpd = FALSE) 
  rect(-1, -1, 2, 2, col = "red")
  text(0.5, 0.5, label = i, cex = 4)
}
close.screen(all = TRUE) 


dev.off(); plot.new()

par(oma = rep(2, 4), mar = rep(2, 4), bg = "grey80")
split.screen(c(2, 1))           
split.screen(c(1, 2), screen = 2) 
split.screen(c(2, 1), screen = 4) 
split.screen(c(1, 2), screen = 6) 

for (i in 1:8) {
  screen(i)
  box("figure", lty = "dashed", col = "red")
  par(xpd = FALSE)
  rect(-1, -1, 2, 2, col = "white")
  text(0.5, 0.5, label = i, cex = 4)
}
close.screen(all = TRUE)


dev.off(); plot.new()

mat <- matrix(c(0.0, 0.7, 0.0, 0.7, 
                0.75, 1.0, 0.75, 1.0), 
              nrow = 2, byrow = TRUE) 

par(oma = rep(2, 4), mar = rep(2, 4), bg = "grey60")
split.screen(figs = mat)
split.screen(figs = mat, screen = 1)

screen(1)
par(xpd = FALSE)
rect(-1, -1, 2, 2, col = "white")
text(0.5, 0.8, label = 1, cex = 2.5)
box("figure", lty = "dashed", col = "red")

for (i in 2:4) {
  screen(i)
  par(xpd = FALSE)
  rect(-1, -1, 2, 2, col = "grey80") 
  text(0.5, 0.5, label = i, cex = 2.5)
  box("figure", lty = "dashed", col = "red")
}
close.screen(all = TRUE)


tab = read.table("pgr.txt", sep = "\t", header = TRUE)

dim(tab)     
nrow(tab)    
ncol(tab)    
summary(tab) 

plot(tab$hay, tab$pH, xlab = "Hay", ylab = "pH", main = "Titre")
text(tab$hay, tab$pH, cex = 1, labels = tab$FR)

rendement = ifelse(tab$FR > median(tab$FR), 1, 2)
couleur = ifelse(tab$FR > median(tab$FR), "red", "grey") 

plot(tab$hay, tab$pH, col = couleur, pch = 1)
legend("topleft", pch = 1, legend = c("> median", "< median"), col = c("red", "grey"))

plot(tab$hay, tab$pH, col = couleur)
legend(locator(1), pch = 1, legend = c("> median", "< median"), col = c("red", "grey"))

boxplot(tab$hay ~ rendement, axes = TRUE, names = c("> median", "< median"), col = c("red", "gray"))


dev.off() 
layout(matrix(c(2, 0, 1, 3), 2, 2), c(1, 6), c(4, 1))

par(mar = c(1, 1, 3, 2))
plot(tab$hay, tab$pH, pch = 16, col = couleur, ylim = c(2, 9), xlim = c(2, 9))     
texte_legende <- c("> median", "< median")
legend("topright", legend = texte_legende, col = c("red", "gray"), pch = 16) 

par(mar = c(1, 1, 3, 2))
boxplot(tab$pH ~ rendement, horizontal = FALSE, axes = FALSE, ylim = c(2, 9), names = c("> median", "< median"), col = c("red", "gray"))
title(main = 'pH', line = -5, cex.main = 2, col.main = "blue")

par(mar = c(1, 2, 2, 1))
boxplot(tab$hay ~ rendement, horizontal = TRUE, axes = FALSE, ylim = c(2, 9), names = c("> median", "< median"), col = c("red", "gray"))
title(main = 'hay', cex.main = 2, col.main = "blue")