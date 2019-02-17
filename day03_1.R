# # environment >> import Dataset >> if .CSV form text(base)
# > car1 <- read.csv("C:/som16/day03/car1.csv")
# >   View(car1)

#### 전처리 과저
str(car1)
names(car1) <- c("이름", "밤낮", "사고수", "사망", "중상", "부상", "고통", "리포트")
names(car1)
names(car1) <- c("name", "DayNight", "count", "death") ## 나머지는 NA처리
names(car1)
names(car1) <- c("name", "DayNight", "count", "death",  "injury",   "Sinjury",  "wound",    "report" )
names(car1) #컬럼 이름만 출력
## 새로운 변수 생성(파생변수)
car1$result <- ifelse(car1$DayNight == 1, "낮", "밤") 
View(car1)
car1$result2 <- ifelse(car1$name == "과속", "속도문제", "x") 
View(car1)
car1$result3 <- ifelse(car1$count>5000, "큰사고", "작은사고") 
View(car1)

table(car1$DayNight) # table함수 빈도수를 보여줌.
table(car1$result) # 데이터를 원하는 대로 재가공. 

plot(table(car1$result))
install.packages("ggplot2")
library(ggplot2) # 다양한 그래프 제공 (시각화 전문 라이브러리)

qplot(car1$result)

#사고의 유형 나누기
#없는 컬럼을 하나 변수로 만들어 추가
#파생변수
car1$result4 <- ifelse(car1$death >= 1000, "대형사고",
                       ifelse(car1$death >= 100, "중형사고", "보통사고")
                       )
View(car1)

##
qplot(car1$result4) #ggplot2 패키지 #편리
plot(table(car1$result4)) #base 패키지

car2 <- data.frame(car1$name, car1$count, car1$result4)
car2 # car1.name "."은 접근의 의미

car2 <- data.frame(name = car1$name, 
                   count = car1$count, 
                   result = car1$result4)
car2


#요약함수(table함수)
#막대그래프(qplot함수)

# 원하는 행만 추출
# subset(추출대상, 조건) << 부분 추출 함수
dayCount <- subset(car1$count, car1$DayNight == 1) #베이스 패키지에 존재
dayCount

typeof(dayCount)
class(dayCount)
str(dayCount) #벡터 형태의 데이터 
sum(dayCount)

nightCount <- subset(car1$count, car1$DayNight == 0) #베이스 패키지에 존재
nightCount
sum(nightCount)

#낮의 사고가 많을까 저녁의 사고가 많을까.
# 1) 밤낮의 결과를 데이터 프레임 넣기.
#################### 3) 요약을 해보세요.
# 2) 막대그래프 그리기.

# DayNight_sum <- data.frame(day = dayCount,
#                            night = nightCount)
# 
# table(DayNight_sum)

DayNight_sum <- data.frame(day = sum(dayCount),
                           night = sum(nightCount))
table(DayNight_sum)

hist(DayNight_sum$day)

sum(dayCount)
mean(dayCount)
max(dayCount); min(dayCount)
sum(nightCount)
mean(nightCount)
max(nightCount); min(nightCount)

#ifelse(조건1 & 조건2)
#밤에 과속인 경우와 밤의 심야 신호위반
night_over <- sum(ifelse(car1$DayNight == 0 & car1$name == "과속", 
                     car1$count, 0))
night_pass <- sum(ifelse(car1$DayNight == 0 & car1$name == "신호위반", 
                         car1$count, 0))
max(night_over, night_pass)
