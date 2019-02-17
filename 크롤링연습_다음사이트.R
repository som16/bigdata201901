install.packages("rvest")
library(rvest)

url <- "http://www.daum.net"
#소스를 통채로 다 들고 옮
#크롬 F12
#DAUM SITE 크롤링-HTML(반정형)
htmlText <- read_html(url)
htmlText

#id명은 # 붙이기
news <- html_nodes(htmlText, "#news") 
news

#class명은 . 붙이기
#class명이 screen_out인 모든 태그 로드
#주의!!! 텍스트를 가지고 온것이 아님.
product <- html_nodes(htmlText, ".screen_out")
product

#태그는 이름 그대로 입력
product2 <- html_nodes(htmlText, "h2")
product2

productTxt <- html_text(product)

#정형화 분석 데이터 프레임(항목하나하나)
#통으로 분석 하나의 변수에 한번에 넣기(연설문 분석, )
product3 <- html_nodes(htmlText, ".panel_bloc")
product3
product3Txt <- html_text(product3)
product3Txt %>% gsub(pattern="\n", replacement = " ")
product3Txt %>% gsub(pattern="\\n ", replacement = " ")
