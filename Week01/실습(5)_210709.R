#데이터 조작
head(5) #앞에서부터 5개 데이터 출력
tail(5) #뒤에서부터 5개 데이터 출력
str() #대략적인 데이터 개요 파악
summary() #대략적인 데이터 개요 파악2

getwd() #"/Users/doyeonpyun/Downloads/R_basic"
nhis <- read.csv('/Users/doyeonpyun/Downloads/R_basic/data/NHIS_OPEN_GJ_EUC-KR.csv', fileEncoding="EUC-KR")
nhis #인코딩 에러가 날 수 있으니 항상 파일인코딩 확인하여 불러오기
nhis2 <- read.csv("/Users/doyeonpyun/Downloads/R_basic/data/NHIS_OPEN_GJ_UTF-8.csv", fileEncoding = "UTF-8" ) 
nhis2

#엑셀 파일 불러오기   
#install.packages('openxlsx')    
library(openxlsx)                 

nhis_sheet1= read.xlsx('/Users/doyeonpyun/Downloads/R_basic/data/NHIS_OPEN_GJ_EUC-KR.xlsx' ) 
# 디폴트로 엑셀 파일의 첫번째 sheet를 읽음.  

nhis_sheet2= read.xlsx('/Users/doyeonpyun/Downloads/R_basic/data/NHIS_OPEN_GJ_EUC-KR.xlsx', sheet=2) 
# 엑셀 파일의 두번째 sheet를 읽음.

##빅데이터 파일 불러오기 : 크기가 큰 피일 빠르게 불러올 수 있음
#install.packages('data.table')        
library(data.table)                   
nhis_bigdata = fread("/Users/doyeonpyun/Downloads/R_basic/data/NHIS_OPEN_GJ_BIGDATA_UTF-8.csv", encoding = "UTF-8" )
str(nhis_bigdata) 

#데이터 추출
Orange[1, ]                       	# 1행만 추출 
Orange[1:5, ]                     	# 1행부터 5행까지 추출
Orange[6:10, ]                   		# 6행부터 10행까지 추출
Orange[c(1,5), ]                    # 1행과 5행 추출
Orange[-c(1:29), ]               		# 1~29행  제외하고 모든 행 추출  

#조건을 부여하여 원하는 데이터만 추출
Orange[Orange$age ==118,  ]     # age컬럼의 데이터가 118인 행만 추출
Orange[Orange$age %in% c(118,484), ] #age가 118이나 484인 행만 추출
Orange[Orange$age >= 1372 , ] # age 컬럼의 데이터가 1372와 같거나 큰 행만 추출 

# Orange의 circumference 열만 추출. 행은 모든 행 추출
Orange[ , "circumference"]

# Orange의 Tree와 circumference열만 추출. 행은 1행만 추출 
Orange[ 1 , c("Tree","circumference")]

Orange[ , 1]  # Orange 데이터프레임의 첫번째 열만 추출
Orange[ , c(1,3)] # Orange 데이터프레임의 1열과 3열만 추출
Orange[ , c(1:3)] # Orange 데이터프레임의 첫번째 열부터 3번째 열까지 추출 
Orange[ , -c(1,3)] # Orange 데이터프레임의 1열과 3열만 제외하고 추출

Orange[1:5 , "circumference"] 

# Tree열이 3또는 2인 행의 Tree 열과 circumference 열 추출 
Orange[Orange$Tree %in% c(3,2),  c("Tree","circumference")]

#정렬
OrangeT1 <- Orange[Orange$circumference < 50,  ] 
OrangeT1[ order(OrangeT1$circumference),    ]

# 내림차순 정렬은 order()안에 마이너스(-) 기호를 사용하면 됨 
OrangeT1[order( -OrangeT1$circumference ),  ]  

##그룹별 집계   
# Tree 별 circumference 평균
aggregate(circumference ~ Tree, Orange, mean)
#dplyr패키지를 활용하면 더 직관적으로 집계 가능

#데이터 구조 변경
stu1 <- data.frame( no = c(1,2,3),  midterm = c(100,90,80)) 
stu2 <- data.frame( no = c(1,2,3),  finalterm = c(100,90,80)) 
stu3 <- data.frame( no = c(1,4,5),  quiz = c(99,88,77)) 
stu4 <- data.frame( no = c(4,5,6),  midterm = c(99,88,77))  


## 데이터 병합
stu1
stu2
merge(stu1, stu2)
stu3
merge(stu1, stu3)
merge(stu1, stu3, all=TRUE) 
stu4
stu1
rbind(stu1, stu4)
stu2
cbind(stu1, stu2)
cbind(stu1, stu3)

