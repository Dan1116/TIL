# Ch_5
### if 와 else
* if 와 else는 키워드, if~else는 하나의 문장이다( if와 else 사이에 다른 것이 올 수 없다.)

### if~else와 유사한 성격의 조건 연산자 (피연산자가 세 개인 유일한 연산자)
* true or false? 숫자1 : 숫자 2
true 면 숫자1, false 면 숫자 2 

### switch 와 break 
* case, default는 레이블이라 한다.  (case 는 묶을 수 있다. 예) case 1 : case 2 :)
* break 는 switch문, while문을 빠져 나간다.
* break문은 자신을 감싸는 반복문을 하나밖에 벗어나지 못한다. (두개 이상의 반복문을 벗어날 때는 break 레이블을 사용할 수 있다.)

### for, while, 그리고 do while 
* while 반복문 - false가 될 때 까지 반복 ( 검사 후 실행, 항상 3개의 연산문을 확인하게 된다 )
* do~while 반복문 - false가 될 때 까지 반복,  무조건 한번의 실행이 진행 된다,  ( 실행 후 검사, 항상 3개의 연산문을 확인하게 된다 )
* for 반복문 - 주로 인덱스 (일정한 순서에 따라 별도로 배열하여 놓은 목록) 를 사용 할때 쓴다.

### continue 와 break
* break 는 while문이나 switch문을 빠져 나가지만, continue 는 생략하고 다시 위로 ( while이나 switch문으로 ) 돌아가서 실행하라는 뜻.

### 무한루프와 break 
* while (true)		do				for (    ;   ;   )
{				 {				 {
	.   .   .   .			.   .   .   .			.   .   .   .
}				 }				 }

### 반복문의 중첩
* 2차원적인 형태를 만들고 싶을 때는 대부분 반복문의 중첩을 사용한다. 
예) 구구단 

