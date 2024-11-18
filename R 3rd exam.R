# chapter 3 기초통계
# 3.1 데이터 분석이란? 중요 개념
# 데이터 = 세상에 존재하는 모든 것(ex 롤-> dpm,시야점수,KDA)
# 정보 = 데이터를 통해서 어떠한 결과를 생성하는것, 사람들이 보기 쉽게 이미지, 도표등으로 가공한 것
# 데이터프레임을 통해 결과를 창출해야함 
# 데이터의 시각화 = 정보
# 통계란 무엇일까? 데이터프레임의 한 줄
# 범주형 데이터 - 명목형 변수 : 순서나 순위를 암시하지 않고 데이터를 범주화 하는 변수
#               - 순위형 변수 : 순서가 있는 범주이거나, 범주 간의 거리가 일정하지 않거나 알려지지 않은 변수
# 수치형 데이터 - 이산형 변수 : 고유하고 개별적인 값을 갖는 계산가능한 숫자 변수
#               - 연속형 변수 : 주어진 범위 내에서 무한한 수의 값을 가질 수 있는 숫자변수
# im fine that's ok gwanchanna gwanchanna ning ning ning ning ning~

# 사분위수
data <- c(10,15,20,25,30,15,20,25,25,10)
range_value <- max(data) - min(data)
df <- data.frame(values = c(5,7,10,12,14,18,20,22,25,27,30))
Q1 <- quantile(data, 0.25)
Q3 <- quantile(data, 0.75)
iqr_value <- Q3 - Q1
iqr_value

# 1
vec <- c(0,1,2,3,4,5,6,7,8,9,10)
# 2
vec2 <- c(10,11,12,13,14,15,16,17,18,19,20)
cbind(vec,vec2)
# 3
matr <- cbind(vec,vec2)
matr[4,2] = 100
matr

# 4
vec3 <- c(20,21,22,23,24,25,26,27,28,29,30)

vecar <- array(vec,dim= c(5,2))
vec2ar <- array(vec2,dim=c(5,2))
ver3ar <- array(vec3,dim=c(5,2))

# 5
name <- c("Kim","Park","Lee")
kor <- c(100,80,80)
eng <- c(60,40,80)
math <- c(50,100,80)
pis <- c(40,30,20)
cem <- c(40,30,20)
nat <- c(40,20,10)
earth <- c(40,30,50)

score <- data.frame(이름= name, 국어 = kor, 영어 = eng, 수학 = math, 물리 = pis, 화학 = cem, 생명 = nat, 지구과학 = earth)
score

#6
men = (kor+eng+math)/3
score$mean = men
score[score$mean >= 80,]

# 7
hospital <- c("A","B","B","B","B","A","A","A","A","A","B","B")
zinlo <- c(5000,12000,13000,8000,9000,3000,5000,4000,4500,6000,8000,8500)
choban <- c(2500,5000,6000,5500,7000,4600,3000,2500,3400,4700,6400,4400)

df <- data.frame(병원 = hospital, 진료금액 = zinlo, 처방전금액 = choban)
df

# 8
df$처방전금액+ df$진료금액

# 9
all = zinlo+choban
df$allch = all
df
write.csv(df,"D:/202122404김표승 R exam/재난안전프로그래밍_KPS/진료내역.csv", row.names=FALSE)

# 10
setwd("D:/202122404김표승 R exam/재난안전프로그래밍_KPS")
redf <- read.csv("진료내역.csv", header = FALSE,stringsAsFactors = FALSE,fileEncoding = "UTF-8")
