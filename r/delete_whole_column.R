start.time <- Sys.time()
DF <- data.frame(
  x=1:10,
  y=10:1,
  z=rep(5,10),
  a=11:20
)
drops <- c("x","z")
RESULT <- DF[ , !(names(DF) %in% drops)]
print(DF)
print(RESULT)
end.time <- Sys.time()
time.taken <- end.time - start.time
time.taken