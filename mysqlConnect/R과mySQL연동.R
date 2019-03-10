install.packages("rjava")
install.packages("DBI")
install.packages("RMySQL")

library(RMySQL) #RAM에 올려주는 작업
# 1. DB연결
# 2. SQL문

con <- dbConnect(MySQL(),
          dbname = "bigdata",
          user = "root",
          password = "1234") # ID 기본값 root
############################################
# 1. table에 파일을 읽어서 넣기
############################################
dbListTables(con)
dbListFields(con, "member")

d <- dbReadTable(con, "member")
d

dfData <- read.csv("member.csv", head = T)
dfData

dbWriteTable(con, "member", dfData, overwrite = T)
dfData
############################################
# 2. SQL문을 요청해서 결과 받아오기
############################################
df.table <- dbGetQuery(con, "select * from member")
df.table

class(df.table)

dbDisconnect(con) # db와의 연결을 끊
