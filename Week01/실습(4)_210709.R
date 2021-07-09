#프로그래밍 실습
#기초연산자
10 <= 10 
10 > 5 
10 >= 5 

#파이썬의 in과 유사한 기능
n <- 20
n %in% (c(10,20,30)) 

#& 연산자 
n <- 10 
n >=0 & n <= 100 

#or 연산자
n <- 1000
n >= 0 | n <=100 

#not 연산자
!(10==5) 

## 벡터와 스칼라 연산 
score <- c(10, 20) 
score
score + 2         	  
score <- score + 2  	# score 벡터의 모든 데이터에 각각2를 더하고 저장
score

## 벡터와 벡터와의 연산 
score1 <- c(100,200)    
score2 <- c(90,91)    

sum_score <- score1 + score2
sum_score   # 각각 계산됌

diff <- score1 - score2 
diff 

score1 <- c(100,200,300,400)    
score2 <- c(90,91)    

sum_score <- score1 + score2    # 벡터와 벡터의 더하기 연산
sum_score   # 100+90  200+91  300+90  400+91 /score2 2번반복

score1 <- c(100,200,300,400, 500)    
score2 <- c(90,91)    

sum_score <- score1 + score2    # 벡터와 벡터의 더하기 연산
sum_score   # 100+90  200+91  300+90  400+91 / error뜨지만 결과값은 출력

## 행렬과 스칼라와의 연산 
m1 <- matrix(c(1,2,3,4,5,6), nrow = 2) 
m1
m1 <- m1 * 10                             	# 행렬과 스칼라 곱하기 연산  
m1

## 행렬과 행렬과의 연산 

m1 <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3)
m2 <- matrix(c(2,2,2,2,2,2,2,2,2), nrow = 3) 
m1
m2
m1 + m2 


#조건문
## if 문 

score <- 76
if ( score  >= 80 ) {
  print("조건이 TRUE인 경우만 수행할 문장") 
}
#출력값 없음
score2 <- 86
if ( score2  >= 80 ) {
  print("조건이 TRUE인 경우만 수행할 문장") 
}
#print문장 출력

## if ~ else 문 
score <- 100
if(score  >= 91) { 
  print("A") 	
} else {
  print("B or C or D")  
}
#A출력

## if ~ else if 문 

score <- 81
if ( score  >= 91 )	{  print("A") 
} else if ( score  >= 81 ) { print(" B ")  
} else if ( score  >= 61 ) { print(" D ") 
} else  { print (" F ") }
#B출력

## ifelse() 함수 
score <- 85 
ifelse(score>=91,  "A",  "FALSE 일 때 수행") 
score <- 85 
ifelse(score>=91, "A",  ifelse(score>=81, "B", "C or D ") ) 


#for문
for ( num in (1:3) ) { 
  print(num)
}

#중첩 for문
for ( num in (1:5) ) {
  if ( num %% 2 == 0)
    print( paste( num, "짝수") )
  else 
    print( paste( num, "홀수") )
} 

#사용자 정의 함수
a <- function () {
  print("testa")     
  print("testa")
}
a #a함수자체를 불러오기
a() #a에 정의한 함수 불러오기
#두개의 출력결과 다름


# 매개변수가 있는 사용자 정의 함수
a <- function(num) {  
  print(num)        
}
a(20)
a(10)
a(100)

#두개의 매개변수를 가진 사용자정의함수 생성
a <- function(num1, num2) {   	
  print(paste (num1,  ' ',  num2)) 
}
#같은 결과 출력
a(10,20)
a(num1=10, num2=20)

# 리턴 데이터가 있는 함수  
#계산기 만들기 실습
calculator <- function (num1,  op , num2) {
  result <- 0
  if (op == "+") {
    result <- num1 + num2 
  }else if (op == "-") {
    result <- num1 - num2 
  }else if (op == "*") {
    result <- num1 * num2 
  }else if (op == "/") {
    result <- num1 / num2
  } 
  return (result)
}
#사용자 정의 함수 활용
n <- calculator(1,"+",2)
print(n) 

n <- calculator(1,"+",2)    	# n은 calculator()로부터 반환받은 3을 저장
print(n) 

n <- calculator(1,"-",2)    	# n은 calculator()로부터 반환받은 3을 저장
print(n) 
