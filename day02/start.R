a <- 100 # RAM에 저장하는 과정
b <- 200

print(a+b)


name <- c(1, 2, 3, 4, 5)
name[3] # 인덱스[] 사용 # 프린드print() 생략

name <- c("김지훈", "이유진", "박동현", "송민지")
english <- c(90, 80, 60, 70)
math <- c(50, 60, 100, 20)

score <- data.frame(name, english, math)

str(name) # 구조
table(name) # 요약 # 입력값의 ㅅ
class(name) # 데이터 타입
typeof(name) # 데이터의 타입(상세)

# 자동완성(컨트롤+스페이스바, 탭)
row_1 <- score[1,]
str(row_1)
table(row_1) # 요약
class(row_1) # 데이터 타입
typeof(row_1) # 데이터의 타입(상세)

str(score) # 구조 
          # 문자형으로 입력하면 char가 아닌 factor를 기본으로 잡음.
table(score) # 요약
class(score) # 데이터 타입
typeof(score) # 데이터의 타입(상세)수 # 각각의 행이 어떤 형식인가?

################################################
#2. 직접 데이터 프레임을 만들어 봅시다.
lastTerm <- data.frame(name2 = c("song", "kim", "park"),
                       eng2 = c(100, 50, 80),
                       Math2 = c(50, 60, 90))
lastTerm$name2
str(lastTerm$eng2)
table(lastTerm$eng2)

test <- c("apple", "banana", "kiwi", "apple", "banana", "apple")
table(test)

mean(lastTerm$eng2)
