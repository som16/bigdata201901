ans <- scan(what = "", n = 1)
ifelse(ans == "yes", 
       print("실행합니다."),
       print("실행 취소"))

############################
# 순차적 실행 기본
# 조건문 (조건에 따라서 다르게 처리해야하는 경우)
# 반복문(여러번 반복해서 처리해랴하는 경우)

a <- seq(1, 10, 2)
b <- seq(1, 7, 2)
c <- c(1, 2, 3) 
a; b; c
union(a,b)
# setdiff(x, y) x의 요소중 y에 없는 것
setdiff(a,c); setdiff(c, a) 
intersect(a,b)

install.packages("lubridate")
library(lubridate)
