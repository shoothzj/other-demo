setwd(dirname(rstudioapi::getSourceEditorContext()$path))
seg.df <- read.csv("test2.csv", stringsAsFactors = TRUE)
head(seg.df)
str(seg.df)

seg.df.s12 <- subset(seg.df, tt!=2)

str(seg.df.s12)