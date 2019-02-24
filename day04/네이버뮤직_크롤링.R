# 반정형데이터 크롤링
# 1. 네트워크로 연결
install.packages("rvest") ## 웹페이지 연결하는 패키지
library(rvest)

# 2. 문서를 읽어야한다.
## 웹 페이지 R에 저장
url = "http://music.naver.com/listen/top100.nhn?domain=DOMESTIC&duration=1h";
## destfile = "파일명.html"
download.file(url,destfile = "navermusic.html",quiet = T);
naver_music <- read_html("navermusic.html");
# ^ html 읽어오기 // tree 구조로 가지고 옮.

# 3. 데이터 추출(열: 벡터), 전처리
install.packages("dplyr")
library(dplyr)
## 노드 안에 클래스 태그 뭐든 상관 없음.
#순위
ranking <- naver_music %>% 
  html_nodes("._tracklist_move .ranking") %>%
  html_text() %>%
  as.numeric()
##> 문자 1, 2, 3, ..., 10 => 1, 10, 2, 3
ranking
#순위 변동
gap <- naver_music %>% 
  html_nodes("._tracklist_move .change") %>% 
  html_text() %>% 
  gsub(pattern="\r\n||\t||\n||\r", replacement="")
## ^ 정리하는 전처리
## || pattern에서는 2개 넣기
gap
#노래제목
title <- naver_music %>% 
  html_nodes("._tracklist_move ._title span") %>% 
  html_text() %>% 
  gsub(pattern="\r\n||\t||", replacement="") %>% 
  trimws() #글씨 여백지우기
title
#가수
artist <- naver_music %>% 
  html_nodes("._tracklist_move ._artist a") %>% 
  html_text() %>% 
  gsub(pattern="\r\n||\t||\n||\r", replacement="") %>% 
  trimws()
artist

# 4. 데이터 프레임에 넣는다.
musicTop50<- data.frame(ranking,gap,title,artist, stringsAsFactors=F)
musicTop50
View(musicTop50) 

musicTop50 %>% head(5)
musicTop50 %>% tail(5)
