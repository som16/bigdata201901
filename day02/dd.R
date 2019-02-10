# 입력받은 값 판별

input <- scan(what = "", n = 1)
if ( input == "100점" ) {
  print("perfect")
} else {
  print("next time")
}

a <- 300


sprintf("점수는 %a점입니다.")
install.packages("glue")
library(glue)
glue("점수는 {a}점 입니다.")

#삼항 연산자
temp3 <- 80
result <- ifelse(temp3 >= 30, "pass", "fail")
result
#############################
temp4 <- 10
while(temp4 > 7) {
  print("7보다 크군요.")
  temp4 <- temp4 - 1
}

for ( i in 1:5) {
  print("&")
}

#####################################

temp5 <- c(1:5)
for( temp6 in temp5) {
  print(temp6)
}

name <- c("김아무개", "박아무개", "송아무개", "정아무개")

student <- data.frame(name2 = name,
                      age2 = c(30, 40, 60, 80))
student

########################
while ( TRUE ) {
  input2 <- scan(n=1)
  if (input2 ==0 ) {
    print("stop")
    break
  }
}

repeat {
  input2 <- scan(n=1)
  if (input2 ==0 ) {
    print("stop")
    break
  }
}
