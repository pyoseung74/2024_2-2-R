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
