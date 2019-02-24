# 결측치
file <- read.csv("naData.csv")

file

str(file)

mean(file$english)
mean(file$math)
# 0으로 대체하는 법
file$math <- ifelse(is.na(file$math), 0, file$math)
