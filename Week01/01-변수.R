#실습2 - 변수와 데이터 타입

age <- 10 
age
age <- 20
age

#숫자 타입 데이터
age <- 50
class(age)#numeric

age <- 20L
class(age)#integer

#문자 타입 데이터
name <- 'pdy'
class(name)#character

#논리 타입 데이터
is_effective <- TRUE
is_effective 
is_effective <- FALSE
is_effective 
class(is_effective) #logicakl

#Factor타입 데이터
sido <- factor("서울", c("서울","부산","제주"))
sido
class(sido)
levels(sido) #해당 변수에 존재하는 Level출력

10/0 #inf
0/0 #Nan


