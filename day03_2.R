# 데이터 가공하기
install.packages("dplyr")
library(dplyr)
install.packages("bindrcpp")
library(bindrcpp)
exam <- read.csv("excel_exam.csv")
View(exam)

exam %>% filter(class == 1) %>% head(3)

class1 <- exam %>% filter(class == 1)
class2 <- exam %>% filter(class == 2)
class3 <- exam %>% filter(class == 3)
class4 <- exam %>% filter(class == 4)

classNot1 <- exam %>% filter(class != 1)
classNot1
# %>% 파이프 연산자
exam %>% filter(matn >= 80 | science >= 70) 
exam %>% filter(class == 1 | class == 3 | class == 5)
################## %in%를 자주 사용하지 않음.
exam %>% filter(class %in% c(1, 3, 5))
# 데이터 가공하기
#dplyr: package + dataset
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
head(mpg, 10)

# ford차량의 row추출 >> 고속도로 연비 추출 >> 평균
# filter는 행을 추출
ford1 <- mpg %>% filter(manufacturer == "ford")
mean(ford1$hwy)
# 
# 1. class가 compact의 고속도로 연비
# 2. class가 suv의 고속도로 평균 연비

# select는 열을 추출
exam %>% select(math)
exam %>% select(-math)
exam %>% select(math, english)
exam %>% select(-math, -english)
#r은 들여쓰기가 의미가 없다. 
# 그럼에도 불구하고 들여쓰는 이유는 오류를 쉽게 잡기 위함이다.
# 그러나 파이썬의 경우 들여쓰기가 문법의 일부이다.
# 따라서 들여쓰기에 신경을 써야한다.
exam %>% 
  filter(class == 1) %>% 
  select(english) %>% ## %>% 파이프연산자 사용시 들여쓰기 방법
  head(2)

exam %>% arrange(math) # arrange(1차 정렬, 2차 정렬)
exam %>% arrange(desc(class), math) 
# arrange(1차 정렬, 2차 정렬)
# 디폴트는 오름차순
# arrange(desc())내림차순
exam %>% mutate(total = math + english + science)
exam <- exam %>%
  mutate(total = math + english + science)
class(concat_1)
exam %>%
  group_by(class) %>% #summary를 할때는 group으로 묶은 값은 계산하는 것이 좋음
  summarise(meanMath = mean(math),
            sumMath = sum(math),
            median = median(math),
            n = n()) #summary에서 
                     #변수명을 이름지어주지 않으면 'mean(math)'형태로 저장


#######
#문제
mpg %>%
  group_by(manufacturer) %>%
  filter(class == "suv") %>% 
  mutate(tot = (cty + hwy)/2) %>% 
  summarise(meanTot = mean(tot)) %>%
  arrange(desc(meanTot)) %>%
  head(5)
