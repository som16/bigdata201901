now()
date <- now()
date

year(date)
month(date)
day(date)
wday(date)
wday(date, label = T)
hour(date)
minute(date)
second(date)

# 11시 전이면 굿모닝!
# 14시 전이면 굿 에프터 눈
# 20시 전이면 굿 이브닝
# 기타이면 굿 나잇

t <- now()
h <- hour(t)
cat("현재시간", t, "\n")
if( h < 11 ) {
  print("굿모닝")
} else if ( h < 14) {
  print("굿 에프터 눈")
} else if ( h < 20) {
  print("굿 이브닝")
} else print("굿나잇")

# 입력받은 값 판별

input <- scan(n = 1)
if ( input == 100 ) {
  print("perfect")
} else {
  print("next time")
}