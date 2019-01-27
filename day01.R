ages <- c(10, 30, 50)
ages[1]
ages[1] <- 20

# 이름 벡터를 만들고,
# 두번째 사람이 박아무개로 개명
# 이름의 전체 내용을 출력

names <- c("A", "B", "c")
names
names[2] <- "Park"
names

address <- c("서울", "인천", "경기", "서울", "서울", "경기")
str(address)
address2 <- as.factor(address)
str(address2)

address2[2] <- "아산"
address2[2] <- "서울" 

address2 <- as.character(address2)
address2[2] <- "아산"
address2 <- as.factor(address)

# 2000
# 숫자를 입력했을 때
# 기본값은 무조건 스트링(문자열)
# ==> 숫자로 변환

# scan() // 숫자를 입력할 경우 자동으로 숫자로 변환
#        / but "이름" 오류 발생 // 숫자를 기본으로 하기 때문에
# ==> 해결책 scan(what = "") <=== 스트링으로 저장하겠다는 의미

x <- scan() ## error : a real? <== 실수(real number)라는 의미 
            ## 
x
y <- scan(what = "")
y[2] <- "감자" 
str(y)

# typeof(x)
# 정수()
# 실수(real, float(소수점 8개), doublr(소수점 12개))

food <- scan(what = "")
food

str(food)
class(food)
typeof(food)

favorite <- food[1]
# print("my favorite food", favorite) : you can not glue each string
cat("my favorite food is ", favorite)

library(glue) #외부데이터 불러오기, 
              #하지만 오랜시간 사용하지 않으면 
              #불필요하다 판단하여 제거
glue("my favorite food is {favorite} \n")

read.csv("tree.csv")
