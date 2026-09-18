Ex1 = function(A, B) {
  out = (A + B) * (A + B)
  res = out + A
  res
}
Ex1(1, 5)

Ex2 = function(r = 2) {
  p = 2 * pi * r
  s = pi * r * r
  list(rayon = r, perimetre = p, surface = s)
}
Ex2()
Ex2(3)

for(i in 1:99) {
  print(i)
}

i = 1
while(i < 3) {
  print(i)
  i = i + 1
}

X = matrix(1:24, nrow = 4)
X
apply(X, 1, sum)
apply(X, 2, sum)

a = c("a", "b", "c", "d")
b = c(1, 8, 3, 4, 5, 4, 5, 6)
c_val = c(T, T, F)
L = list(a, b, c_val)
lapply(L, length)