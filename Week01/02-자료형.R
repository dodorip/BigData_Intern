#데이터 구조 실습
#벡터
students_age <- c( 11, 12, 13, 20, 15, 21 )    
students_age                                 	
class(students_age)
length(students_age)  # 벡터의 길이 : 6

# 벡터 인덱싱 
students_age[1]       # 1번 인덱스의 데이터 추출하기:11
students_age[3]       # 3번 인덱스의 데이터 추출하기:12
students_age[-1]      # 1번 인덱스의 데이터만 제외하고 추출하기 #11제거 *파이썬과 다름

# 벡터 슬라이싱 
students_age[1:3]        # 1~3까지 추출 : 11,12,13
students_age[4:6]        # 4~6까지 추출 : 20,15,21

# 벡터에 데이터 추가, 갱신   
score <- c(1,2,3)
score[1] <- 10   #1번 인덱스 자리에 10 저장, 기존 1은 제거됌.
score             #10,2,3
score[4] <- 4   	#4번 인덱스 자리에 4저장, 기존 4는 공란이니 4추가
score             #10,2,3,4

# 벡터의 데이터 타입
code <- c(1,12,"30")          # 문자(character) 데이터 타입으로 모두 변경됨
class(code)	                	# character
code        #'1','12','30'

# 순열 생성 
data <- c(1:10) 			   # 1부터 10까지 1씩 증가시켜 생성하기
data

data1 <- seq(1, 10) 		# 1부터 10까지 1씩 증가시켜 생성하기
data1

data2 <- seq(1, 10, by = 2) 	# 1부터 10까지 2단위로 증가하는 순열 생성
data2

data3 <- rep(1, times = 5)   		# 1을 다섯 번 반복 생성하기 
data3

data4 <- rep(1:3, each = 3) 		# 1부터 3을 각각 세 번씩 반복 생성하기
data4

data5 <- rep(1:3, times = 3) 		 #1부터 3까지 출력하는 것을 3번 반복
data5

## 행렬(Matrix)   
var1 <- c(1, 2, 3, 4, 5, 6) 

#var1벡터를 활용하여 2행 3열의 행렬을 생성
x1 <- matrix(var1, nrow = 2, ncol = 3) 
x1 

# var1을 이용해서 2열 행렬을 생성. 행의 개수는 자동 계산됨 
x2 <- matrix(var1, ncol = 2)
x2

# 일부 데이터만 접근
x1[1, ] 		# x1의 1행, 모든 열
x1[, 1] 		# x1의 모든 행, 1열
x1[2, 2] 		# x1의 2행, 2열

#행렬에 데이터 추가 
x1 
x1 <- rbind(x1, c(10, 10, 10))		# 행 추가/bind_rows()도 가능
x1 <- cbind(x1, c(20, 20, 20))	 	# 열 추가/bind_cols()도 가능
x1

## 데이터프레임(Dataframe) : 파이썬 pandas의 DataFrame
no <- c(10,20,30,40,50,60,70)
age <- c(18 , 15, 13, 12, 10, 9, 7)
gender <- c("M","M","M","M","M","F","M")    

# 데이터프레임
students <- data.frame(no, age, gender)   
students

# 열의 이름과 행의 이름 확인
colnames(students) 	# 열 이름 확인
rownames(students) 	# 행 이름 확인

colnames(students) <- c("no", "나이", "성별") 		          # 열 이름 수정
rownames(students) <- c('A', 'B', 'C', 'D', 'E', 'F', 'G') 	# 행 이름 수정

students

#원래의 열이름으로 변경
colnames(students) <- c("no", "age", "gender")  
students

# 1)$을 활용하여 일부 데이터만 접근
students$no          
students$age           


# 2)열 이름으로 특정 열에 접근
students[ ,"no"]  
students[ ,"age"]

# 3)열 인덱스로 특정 열에 접근
students[ , 1]              
students[ , 2]              

# 행 이름으로 특정 행만 접근
students["A", ]     # A행 데이터가 출력된다. 행이름은 “ ” 또는 ‘ ‘로 감쌈
                    # 행 이름 뒤에 콤마(,)를 반드시 써야함

# 행 인덱스로 특정 행만 접근
students[2, ]      # 두번째 행 데이터가 출력 
                    # 행 인덱스 뒤에 콤마(,)를 반드시 써야함

# 행 인덱스, 열 인덱스 또는 행 이름, 열 이름으로 데이터에 접근
students[3,1]          	# 변수이름[행인덱스, 열인덱스]로 작성 
students["A" ,"no"]    	# 변수이름["행이름", "열이름"]으로 작성

## 배열(array) : 파이썬과 비슷
var1 <- c(1,2,3,4,5,6,7,8,9,10,11,12 ) # 벡터 생성하기
arr1 <- array(var1, dim=c(2,2,3,1))      # var1 벡터를 이용하여 3차원 배열 생성 
arr1


## 리스트(list)
v_data <- c("02-111-2222", "01022223333") 		      # 벡터
m_data <- matrix(c(21:26), nrow = 2) 			          # 행렬 
a_data <- array(c(31:36), dim = c(2, 2, 2)) 		    # 배열
d_data <- data.frame(address = c("seoul", "busan"), # 데이터프레임 
                     name = c("Lee", "Kim"), stringsAsFactors = F) 

# list(키1 = 값, 키2 = 값, …. )와 같이 키와 값 쌍으로 리스트 생성 
list_data <- list(	"홍길동", 	# name 키에 “홍길동” 값 저장
                   tel = v_data, 	# tel 키에 v_data를 값으로 저장
                   score1 = m_data, 	# score1 키에 m_data를 값으로 저장
                   score2 = a_data, 	# score2 키에 a_data를 값으로 저장
                   friends = d_data) 	# frends 키에 d_data를 값으로 저장

## 리스트이름$키 
list_data$name    # list_data에서 name키와 쌍을 이루는 데이터
list_data$tel     # list_data에서 tel키와 쌍을 이루는 데이터 


# 리스트이름[숫자] 
list_data[1] 			# list_data에서 첫 번째 서브 리스트
