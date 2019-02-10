midterm2 <- read.csv("C:/som16/day02/midTerm2.csv")
View(midterm2)
str(midterm2)

install.packages()

library(readxl)

midterm3 <- read_excel("C:/som16/day02/midTerm3.xlsx")
View(midterm3)

str(midterm3)
remove() #or 
rm()
list <- ls()
class(list) # 변수들의 이름을 쭉 넣음.
rm(list = ls()) # 저장된 모든 것 제거
a <- 100

subMidterm <- data.frame(midterm3$name,
                         midterm3$age,
                         midterm3$tel)
# 항목명을 적음.
subMidterm2 <- data.frame(name2 = midterm3$name,
                          tel2 = midterm3$tel)
subMidterm2
write.csv(subMidterm2, file = "subMidTerm2.csv")

subMidterm2
subMidterm2$age2 <- c(20, 30, 40) #add age2

# 나눠서 입력하는 것이 더 좋은 방식
addr <- c("서울", "부산", "경기도")
subMidterm2$addr <- addr

names(subMidterm2)
subMidterm2[1] # 인덱스[]사용 또는 $이름 사용

subMidterm2[1]#열추출 => name2
subMidterm2[,1]
subMidterm2[1,] #행추출 => 첫번째 행
subMidterm2[1,1]
subMidterm2[1, 4]
subMidterm2[3, 1]
subMidterm2[3, 3]

# 행과 열 삭제
# dataframe 중심으로 공부
subMidterm2[, -1] #cpu에서만 잠깐 지움. 
                  #RAM에서 지우고 싶다면 변수저장 
subMidterm3 <- subMidterm2[, -1]
subMidterm4 <- subMidterm2[-1, ]
subMidterm5 <- subMidterm2[, -c(2:4)] # :(콜론) => ~.
subMidterm6 <- subMidterm2[, -c(1, 4)] # , 선택적으로 삭제
#######################################################
#######################################################
temp1 <- c(1:100)
temp2 <- seq(1, 10, 2)



