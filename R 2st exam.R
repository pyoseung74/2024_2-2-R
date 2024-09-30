# 재난안전프로그래밍 R 연습 파일 no.2 
# 2.데이터 구조와 함수 이해
# 2.2 리스트
List <- list(1,2,3)
List <- list("궁","강","갱",1.24,TRUE)

typeof(List)
mode(List)

# 리스트 연산 (불가능)
a = list(1,2,3,4)
b = list(4,5,6,7)
a + b

# 2.3 벡터와 배열
Vector <- c(1,2,2.5)
Vector

logical_vector <- c(TRUE,FALSE,TRUE)
logical_vector

char_vector <-c("apple","banana","orange")
char_vector

# 벡터 연산 (같은 자료형만 가능)
Vector_1 <- c(1.6,2.3,3.5)
Vector_2 <- c(2.6,5.3,7.5)

Vector_1 + Vector_2

Vector <- c("aa",2,3)
Vector
mode(Vector)

my_list <- list("apple", 3.14, c(1,2,3), TRUE)

# 행렬 - 2차원 데이터만을 표현 가능
matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol = 4)

m = matrix(c(1,2,3,4), nrow=2)

rownames(m) = c("Row1", "Row2")
colnames(m) = c("Col1","Col2")

# 배열 - 2차원 이상으로 늘릴 수 있는 벡터 
array(data = c(1,2,3,4,5,6),dim = c(3,2)) # 2차원
array(data = c(1,2,3,4,5,6),dim = c(2,2,2)) # 3차원

# 스칼라, 리스트, 벡터, 행렬, 배열 -> 5개를 배움
# 개념을 이해하는게 중요!

a = array(data = c(1,2,3,4,5,6),dim = c(2,2))
b = array(data = c(1,2,3,4,5,6),dim = c(2,2))
cbind(a,b) # 열 결합
rbind(a,b) # 행 결합

# 배열의 이름생성 
my_array <- array(1:12, dim = c(2,3,2))

row_names <- c("Row1","Row2")
col_names <- c("Col1","Col2", "Col3")
slice_names <- c("Slice1","Slice2")

dimnames(my_array) <- list(row_names,col_names,slice_names)
my_array

# 이름을 붙이고 싶지 않을 경우
dimnames(my_array) <- list(NULL,col_names,slice_names)
my_array


# 2.4 인덱싱
# 위치정보에서 어떤 값을 뽑아내거나 확인하는 것
# 파이썬과 다르게 R은 인덱스 번호가 1에서 부터 시작함

install.packages("stringr")
library(stringr)

a <- "a b c defg" # 공백도 문자열 인덱스 값을 가진다
substr(a,1,5)

k <- "저는 강원대학교 학생"
substr(k,4,8)

# 리스트 인덱싱
a <- list(1,2,3,4,5,6)
a[[2]]
a[2] + a[3]    # == list(2) + list(3)
a[[2]] + a[[3]] # == c(2) + c(3)

b <- c(1,2,3,4,5,6,7)

b[4]
b[-4]
b[1:5]
