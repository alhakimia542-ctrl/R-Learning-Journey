getwd()
setwd("C:/Users/Owner/Documents")
tab = read.table("pgr.txt", header = TRUE) 

head(tab)
dim(tab)
nrow(tab)

# تم تصحيح الخطأ الإملائي هنا (كانت nclo)
ncol(tab) 

summary(tab)

plot(tab$hay, tab$pH, xlab = "hay", ylab = "pH", main = "poty")
title("Hi")

localeToCharset()