setwd(dirname(rstudioapi::getSourceEditorContext()$path))
seg.df <- read.csv("D://test.csv", stringsAsFactors = TRUE)
head(seg.df)
str(seg.df)

seg.df.s12 <- subset(seg.df, X1!=2)

str(seg.df.s12)