
#패키지 설치

install.packages("installr")
library(installr)

# R 버전업데이트

check.for.updates.R()
install.R()

print("hello world!!!")

#변수지정

a <- 1
1 ->> a
a = 1
a = 3
b = 4
c = 7

#사칙연산

d = a+b
print(a + b)
print(a)
print(d)
print("hello")
print(2^51)
print(5124%/%124)

#비교연산자

5 < 6
5 <= 5
5>5
5>= 2341
a==b
a!=b

# 논리연산자

!a # 부정연산

(5<=6)&(8<=7) # and / or 연산자
(5<=6)&(8>=7)
(5<=6)|(8<=7)
(5<=6)|(8>=7)
(5==6)|(8>=7)
(5==6)|(8==7)

10/4
13 %/% 4
13%%4

integer_var <- 5
numeric_var <- 3.14
complex_var <- 2 + 3i
character_var <- "Hello World!!!"
logical_var <- TRUE
another_logical_var <- FALSE
NULL_var <- NULL
NA_var <- NA
negative_inf <- -Inf
positive_inf <- Inf
nan <- 0/0

a <- 4
b <- 3
a
b
print(a)
# 왜 print를 배울까? 수치들, 문자들의 합성이 용이해서
# print & paste / paste0

paste(3,4,5,6,7)
print(3,4,5,6,7)
print(paste(3,4,5,6,7))

paste0(3+4,4,5,6,7)
print(paste0(3+4,4,5,6,7))

paste(3,4,5,6,7, sep = "-")
paste0(3+4,4,5,6,7, sep = "-")

# combine

a = c(1,2,3,4,5,6)
sum(a)
sum(c(1,2,3,4,5,6,7,8,9,10))
seq(from = 1, to = 5, by = 2) # 1부터 5까지 2개씩 증가
seq(1,5, by = 2)
seq(0,1, length.out = 1000) # 0부터 1까지 1000개가 되는 자료생성
rep(c(1,2,3), times = 2) # 전체 반복하는 vector
rep(c(1,2,3), each = 2)  # 개별 원소를  두번 반복하는 vector
x = 1:100
print(x)
head(x)
head(x, n=85)
tail(x)
tail(x, n = 42)
sample(x, size, replace =FALSE, prob = NULL)
#x = 선택할 집단에 해당하는 양의 값
#size : 추출할 개수
#replace : 복원여부 (기본값 : FALSE)
#prob : x의 각 원소별 추출 확률(기본값은 NULL)

sample(10)
sample(45,6) # 1부터 45에서 6개를 임의로 추출함
sample(10,3, replace = TRUE)
sample(10,3, prob=(1:10)/55) # 10개중 3개를 임의로 복원 추출하는데 
#추출될 확률은 (1:10)/55로 각각 다름
sample(10,3,prob= c(0.1,0.2,0.3,0.05,0.05,0.05,0.05,0.05,0.05,0.05))
sample(45,6)
x<- c(2,4,-1,3)
which(x>2) #x의 값들 중 2보다 큰 값 출력
names(x) <- c("1번","2번","3번","4번") #x의 값에 이름을 각각 부여
x
runif(n, min, max) #최소와 최대 사이의 균일 분포에서 n개의 연속형 난수를 생성
rnorm(n,평균,sd) #주어진 평균과 표준편차 sd를 갖는 정규분포에서 n개의 난수를 생성
rbinom(n,size, prob) #주어진 시행 횟수와 성공 가능성 prob를 사용하여 이항 분포에서
#n개의 난수를 생성함

a = 10
b = 20
c = 30

rm(a) # a라는 변수를 삭제
rm(list = c("a","c")) # a,c 변수삭제
rm(list=ls()) #모든 값 삭제

getwd()
# 경로 설정시 / 혹은 \\ 사용
setwd("H:\\Rfile")

seq(1,100, by =5)
rep(c(1,2,3,4,5), times = 100)
rep(c(1,2,3,4,5), each = 100)
sample(10,5)
sample(49,6)
sample(10,3,replace= TRUE)
sample(10,3, prob= (1:10)/55)
sample(10,3,prob=c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05))
runif(100,50,100)
rnorm(200,100,15)
rbinom(10,500)
