library(hash)
h = hash()
aux <- c("s1", "s2", "s1", "c")
for (y in aux) {
  if (grepl("s", y, fixed = TRUE)) {
    if (has.key(y, h) == FALSE) {
      h[y] = 1
      print(y)
    }
  }
}