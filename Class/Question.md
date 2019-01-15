# 질문
### 스위프트

프로토콜 지향 프로그래밍 = 구조체로 구현? 특정 역할을 수행하기 위한 메서드, 기능의 모듈화가 명확해진다 (상속이라는 한계점을 탈피할 수 있다)
프로토콜 = 어떤 타입에 이 기능이 필요하다 알려주는 기능? -> 프로퍼티 요구, 메서드 요구, 이니셜라이저 (init) 요구
익스텐션과 프로토콜의 결합?
클래스는 참조 타입, 참조 추적에 비용이 많이 발생, => 프로토콜이 해결

 함수형 프로그래밍
  1. 순수 함수(Pure Function)
    : 함수의 인자에 의해 결과값이 결정되어야 한다.
add(10, 20) => 30 + lock / state / unlock
add(10, 20) => 30 + lock / state / unlock
add(10, 20) => 30 + lock / state / unlock

state = 40

 Swift = 객체
   1. class   => Reference Type
   2. struct  => Value Type
   3. enum    => Value Type

 Reference Counting
  => 객체를 가르키는 참조를 카운팅해서, 카운팅이 0이 되는 순간 객체를 파괴한다.
  1) GC
    => 별도의 프로그램이 객체의 참조 계수를 관리하는 기술
    문제점) GC가 구동되는 시점에 CPU를 점유하므로, 전체적인 프로그램의 성능을
          저하시킬 수 있다.
    장점) 엄청 똑똑하다.
  
     MRC - 개발자가 직접 참조 계수를 조작한다.
     User u = u2;
     u.retain()
     
     u.release()

  2) ARC(ObjC, Swift)
    => 컴파일러가 컴파일 타임에 참조 계수 관련 코드를 삽입하는 기술
    장점) 성능 저하가 없다.
    단점) 개발자가 신경 써야된다.
         누수가 많이 발생할 수 있다.

   var u1 = User()
   var u2 = User()

 참조 계수의 문제점
   => 참조 계수를 증감하는 모든 연산은 스레드 안전해야 한다.
   => Lock이 필요하다.
   => 객체를 생성하고 파괴하는 비용이 비싸다.
      malloc / free

 u1 = nil;

 Value Type
   User u1 = u2;
  문제점: 복사의 비용이 크다.
    Stack 영역
   => 메모리를 생성하는 비용이 0(1)
      메모리를 파괴하는 비용이 0(1)


 프로퍼티
   Field + getter + setter

 Kotlin
data class User(var firstName: String, var lastName: String) {
	
	 Backing Field가 없는 프로퍼티
	var fullName: String
		get() = "$firstName, $lastName"
		set(value) {
		 	 ...
		}
}

 Swift
struct User {
	let firstName: String
	let lastName: String

	var fullName: String
		get() {
			 ...
		}

		set() {

		}

}

 함수형 언어
 => 함수를 참조할 수 있고, 인자로 전달할 수 있고,
    반환할 수 있어야 한다.
 => 함수를 일급 시민으로 취급한다.

### 자바

 Vector: Java의 잘못된 동적 배열 라이브러리
 상속
  => 부모의 구현과 인터페이스를 물려 받는다.

  : 깨지기 쉬운 기반 클래스 문제

 해결방법
  1. 반드시 부모 클래스의 모든 필드는 private 이어야 한다.
  2. 부모 클래스의 메소드를 통해 부모 클래스를 사용해야 한다.

 클래스: 재사용
 => 잘못 사용하기 어렵게 만들어야 한다.
 재사용을 사용하기 위해서는 '포함'이 좋다.


 Processing => GUI(Client) => 산성비
 Server(1초에 한개씩 연결된 클라이언트에게 단어를 전달한다.)

 Clean Code
  : 로버트 C 마틴(엉클 밥)

 최소 지식의 원칙: 디미터의 법칙
 => 객체를 설계할 때, 최소한의 필요한 정보만 전달 받는 것이 좋다.

