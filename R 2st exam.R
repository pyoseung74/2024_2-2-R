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

# 6주차 배열 인덱싱
a= array(data= c(1,2,3,4,5,6),dim=c(2,3))
a[2]
a
a[1,2] # 배열 값의 위치 번호
a[1:2]
a[1:3]
a[1:2,2]
a[6]   # 들어간 벡터의 순서대로 숫자가 나온다
a[2,2:3] # 2번쨰 행의 2:3열 슬라이싱

a[c(1,6)] # 벡터 자체를 통으로 호출

my_list <- list("apple", 3.14, c(1,2,3), TRUE)

my_list[[3]][2] # list 속의 벡터에서 벡터값을 뽑아서 그 위치값을 선정

my_list[3][2] + my_list[3][3] # list 속 3번째 성분을 뽑은 list(c(1,2,3)) 에서 두번째, 세번째는 존재하지않으므로 NULL출력 

my_list[[3]]

ar <- array(1:24,dim = c(3,4,2))
ar
ar[2,3,1]
ar[3,,2]
ar[,2:3,]
ar[2,3,1]
ar[3,,2]
ar[,,2]

ar[1,4,2]

# 문제 1
arr <- array(1:20, dim=c(2,5,2))

arr[1,3,1]             
arr[2,3,2]

arr[1:2,3,1]

# 2.5 데이터 구조 파악 - 테이블/ 데이터프레임
# dataframe -> 벡터들을 담는 주머니, 다양한 자료형이 존재함 / 같은 자료형을 담는 벡터들의 집합 

city <- c("Seoul","Busan","Daegu","Seoul","Busan","Dague","Ulsan")
pm25 <- c(18,21,21,17,8,11,25)

df <- data.frame(A = city, B = pm25)
df

id <-c(1:5)
gender <- c("M","F","F","M","M")
major <- c("Eng","Math","Com","Eng","Busi")
salary <- c(2500,2800,2500,3000,2600)
survey <- data.frame(ID = id, Gender = gender, Major = major, Salary = salary, stringsAsFactors = FALSE)

survey[1]
survey$ID # 데이터베이스$변수명 = 벡터값 반환 

survey$ID[3:4]

survey$score = c(67,89,45,86,53) # 데이터베이스$변수명 = c(~~~) / 데이터베이스에 새로운 변수 추가
survey$ss = survey$Salary+survey$score # 변수끼리 더한후 새로 데이터베이스에 추가
survey
