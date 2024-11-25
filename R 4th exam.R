# 241125 수업
# 그래프 그리기
install.packages("ggplot2")
install.packages("crayon")
library(ggplot2)
library(crayon)
# 막대그래프
city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
vari <- c("오전","오후","오전","오후","오전","오후", "오후")
pm25 <- c(18,21,21,17,8,11,25)

df <- data.frame(city = city, pm25 = pm25)

ggplot(df,aes(x = city, y = pm25, fill = vari)) + geom_bar(stat = "identity") +
      labs(title = "지역별 초미세먼지 농도") + xlab("City") + ylab("농도")

# 산점도
df <- data.frame(x= c(1,2,3,4,5), y =c(6,8,5,9,7))

ggplot(df, aes(x= x, y = y))+
      geom_point(data = df,aes(x = x, y = y),color = "blue", size = 3) +
      geom_line(data = df,aes(x = x, y = y),color = "Connected Points"), size = 1.5)+
      geom_point(data = df,aes(x = x, y = y),color = "blue", size = 3) +
      geom_line(data = df,aes(x = x, y = y),color = "Connected Points 2"), size = 1.5)+
      labs(title = "Scatter Plot") +
      xlab("X") + ylab("Y")

# 히스토그램
# 연속적인 값을 구간으로 나눠서 구간안의 값을 카운트하는 방법

df <- data.frame(valus = c(5,7,10,12,14,18,20,22,25,27,30))

ggplot(df,aes(x = values)) +
  geom_histogram(binwidth =  5, fill = "steelblue", color = "white") + 
  labs(title = "Histogram of Valus") + 
  xlab("values")+
  ylab("Frequency")

# 상자수염그림 (박스플롯) ->시험출제 x

df <- data.frame(
  group = c(rep("Group 1", 60), rep("Group 2", 60)), 
  values = c(rnorm(60,mean = 0, sd = 1), rnorm(60,mean = 2, sd = 1)))

ggplot(df,aes(x=groupm, y = values))+ geom_boxplot(fill = c("lightblue","lightgreen"),outlier.color = "red")+
  labs(title= "Boxplot Example")+
  xlab("Group")+
  ylab("Values")

# 데이터 전처리
# 데이터를 분석 및 처리에 적합한 형태로 만드는 과정

install.packages("data.table")
library(data.table)              
setwd("D:/202122404김표승 R exam/재난안전프로그래밍_KPS")

HN_09 <- read.csv("HN_09.csv",header = FALSE,stringsAsFactors = FALSE,fileEncoding = "UTF-8")

# 훨씬 빠르고 안정적이다 fread

hn_2009 <- fread('D:/202122404김표승 R exam/재난안전프로그래밍_KPS/HN_09.csv')
hn_2012 <- fread('D:/202122404김표승 R exam/재난안전프로그래밍_KPS/HN_10~12.csv')
hn_2015 <- fread('D:/202122404김표승 R exam/재난안전프로그래밍_KPS/HN_13~15.csv')
# 데이터프레임 모든 변수 합치기

combined_df <- rbindlist(list(hn_2009,hn_2012,hn_2015),fill = TRUE)
fill = TRUE # 누락된 변수 처리

# 데이터의 차원이 어떻게 이루어져 있는지 판단하는 함수
dim(hn_2009)

# hn_2009에 저장되있는 변수들만 가져오고 싶을 때
col = colnames(hn_2009)
col_2009 <- combined_df[,col,with = FALSE]
dim(col_2009)

# 모든 결측치 제거
df <- fread('D:/202122404김표승 R exam/재난안전프로그래밍_KPS/a.csv')
df_clean <- na.omit(df)

# sapply(변수 및 데이터, 모두 적용하거나 실행하고 싶은 함수)
df_numeric <- df[,sapply(df,is.numeric), with = FALSE] # 수치형 값을 가지는 변수 분리
df_character <- df[,sapply(df,is.character),with = FALSE] # 문자형 값을 가지는 변수 분리
dim(df_numeric)
dim(df_character)

# 결측값 처리
install.packages("mice")
library(mice)
# mice(데이터, m = , maxit= , method="pmm", seed = )
df <- fread('D:/202122404김표승 R exam/재난안전프로그래밍_KPS/a.csv')
imputed_data <- mice(df, m = 5, maxit = 10, method = "pmm", seed = 1235)

# 처리된 데이터 선택
completed_data <- complete(imputed_data,1) # 첫번째 데이터를 사용

fwrite(completed_data, 'D:/202122404김표승 R exam/재난안전프로그래밍_KPS/com_a.csv')

#• "pmm": Predictive Mean Matching. 누락된 값을 예측한 후, 예측값에 가장 가까운 실제 관측값으로 대체함
#• "norm": Bayesian Linear Regression. 연속형 변수에 대한 베이지안 선형 회귀를 사용하여 누락된 값을 예측함
#• "norm.nob": Non-Bayesian Linear Regression. 베이지안이 아닌 선형 회귀를 사용하여 누락된 값을 예측함
#• "logreg": Logistic Regression. 이진 범주형 변수에 대한 누락된 값을 예측함
#• "polyreg": Polytomous Regression. 다범주형 변수에 대한 누락된 값을 예측함
#• "cart": Classification and Regression Trees. CART 알고리즘을 사용하여 누락된 값을 예측함
#• "rf": Random Forest. 랜덤 포레스트 알고리즘을 사용하여 누락된 값을 예측함
#• "mean": 평균 대체. 변수의 평균값으로 누락된 값을 대체함
#• "midastouch": Weighted Predictive Mean Matching. 가중치를 적용한 Predictive Mean Matching 방법
#• "sample": 무작위 추출, 누락되지 않은 값 중에서 무작위로 값을 선택하여 누락된 값을 대체함

# 데이터 변환
library(dplyr)
# ~ifelse : ~ifelse(범위값, 범위에 해당되는 값에 대한 변환 값, 변환하고 싶은 대상) →하나의 조건에 대해서만 처리
# mutate(데이터, across(c(“변수명1","변수명2","변수명3"), ~ifelse(범위값, 변환값, 변환대상)))
