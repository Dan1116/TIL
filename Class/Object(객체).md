# Object(객체)
* 속성 + 메소드

* Memory
* Reference Type(Reference Counting)
* class
*  참조 계수의 증감이 멀티 코어에서 안전하게 동작해야 한다.
*   => Atomic Operations
* => 성능에 저하가 발생할 수 있다.

* Value Type(Copy)
* struct
* enum  
* => Immutable 
* => Monad

### 초기화 메소드(생성자)
	* 지정 초기화 메소드
	* 편의 초기화 메소드

### 로그(Logging)
	* : 애플리케이션의 활동을 기록하는 작업

# C
## printf 함수의 기본 서식문자
| %d | int | 부호 있는 10진수 정수 |
| %u | unsigned int | 부호 없는 10진수 정수 |
| %o | unsigned int | 부호 없는 8진수 정수 |
| %x,%X | unsigned int | 부호 없는 16진수 정수 |
| %f | double | 10진수 방식의 부동소수점 실수 |
| %e, %E | double | e 또는 E 방식의 부동소수점 실수 |
| %g, %G | double | 값에 따라 %f 와 %e 사이에서 선택 |
| %c | int | 값에 대응하는 문자 |
| %s | char | 문자열 |
| %p | void | 포인터의 주소 값 |
| %n | int | 포인터의 주소 값 |

## scarf 함수의 기본 서식문자
| %d | int | 부호 있는 10진수 정수 |
| %i | int | 부호 있는 10진수 정수 |
| %u | unsigned int | 부호 없는 10진수 정수 |
| %o | unsigned int | 부호 없는 8진수 정수 |
| %x | unsigned int | 부호 없는 16진수 정수 |
| %c | char | 문자 |
| %s | char | 문자열 |
| %p | void | 주소 값 |
| %f, %e, %g | float | 부호 있는 실수 |