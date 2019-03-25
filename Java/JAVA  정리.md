# JAVA  정리
* class를 통해서 인스턴스를 생성 
* 메소드 재정의, 동적 바인딩
* 업케스팅 후 재정의 된 메소드 호출
* String 은 불변 객체 (상태가 변경 되야 한다면 그 상태를 가지는 새로운 객체를 생성한다)
* 자식의 공통된 기능은 반드시 부모로부터 비롯되어야 한다 (부모의 레퍼런스를 통해서 자식의 기능을 온전히 이용할 수 있다)
* 자식은 반드시 기능을 제공해야 하고 부모가 구현을 제공할 필요가 없다면, 추상 메소드가 좋다
* 리팩토링 (Refactoring) : 기존 코드의 동작을 변경하지 않고 구조를 개선하는 작업 (마틴 파울러) -> 코드의 유지보수성을 떨어트리는 요소 - 냄새 (smells) -> Replace type code with polymorphism

### Boxing
* Boxing = Collection 에 Primitive Type 을 저장하기 위해서는 Reference Type으로 변환해야 한다
* 자동으로 박싱을 하는 것 = Auto Boxing
* 오토 박싱은 어떤 타입이 들어있는지 빼낼 때 알 수 없으므로 잘 사용하지 않는다
* Collection 에는 하나의 타입만 집어넣자

### Upcasting 은 암묵적(Implicit)으로 허용
* static binding  : 컴파일러 (타입만 볼 수 있다)가 결정
* dynamic binding : 실행시간에 결정 (default)

### Private > default > protected > public
* default = 같은 클래스 내에서는 접근 가능,  같은 패키지 내에서는 protected 에 접근이 가능
* 패키지의 이름이 같으면 다른 모듈이여도 접근이 가능하다 (단점) 악의적으로 이용이 가능하다

## StringBuilder 객체의 용도
* 불변 객체는 새로운 표현마다 새로운 객체가 만들어진다.
* 프로그램 성능이 객체의 생성과 파괴에 큰 영향을 받는다
* String 과 다르게 mutable
* 문자열 연산이 자주 있을 때 사용함
* Builder은 단일 쓰레드 환경에서 사용하기 좋다
* Buffer는 멀티 쓰레드 환경에서 사용하기 좋으며 동기화를 지원 =을 쓸 이유가 없다

##  @Override  (런타임 다형성을 구현하는 기능 )
* 컴파일러에게 특정한 동작을 한다는 것을 알려주는 기능( Annotation)
* 요즘에는 부모로부터 상속받은 클래스는 앞에 override한다고 명시
* 런타임에 작동하는 annotation을 만들어야 한다 (build, FunctionalInterface)

## 정적 배열 Array
* 컴파일 타임에 크기가 결정된다
* 사이즈 = 초기화시 고정
* 속도 = 초기화시 메모리에 할당, 속도가 빠르다
* 변경 = 사이즈 변경 불가

## 동적 배열 ArrayList
* 동적배열, 컬랙션 (특정한 부분을 찾는 시간이 빠르다)
* 런타임에 크기가 계속 변경될 수 있다 (결국 정적배열을 사용해서 구현)
* 원시적(primitive) 타입을 넣을 수 없다
* 초기화시  사이즈를 표시하지 않음, 유동적
* 추가시 메모리를 재할당, 속도가 느리다
* 추가 삭제 가능 (add(), remove())

## 동적 배열 LinkedList
* 동적배열, 컬랙션 ( 특정한 부분을 삽입 삭제 하는 시간이 빠르다)
* 컴파일 할 때 정적 변수를 파일에 저장, 동적 변수는 런타임 때 

## 래퍼 클래스(Integer, Long, Double)가 필요한 이유
* 원시적 타입(call by value)을 참조형 타입(call by reference)으로 사용하기 위해서 만들어진 클래스가 래퍼 클래스
* 원시 데이터 유형은 메모리 주소로 참조 될 수 없습니다. 그렇기 때문에 원시 값의 자리 표시자 역할을 하는 래퍼가 필요합니다. 이 값들은 돌연변이되어 액세스되거나, 재구성되거나, 정렬되거나 무작위 화 될 수 있습니다.

## 비교 
* 객체의 동등성 -> 동일한 내용을 가지는가 (.equals)
* 참조의 동등성 -> 동일한 참조값을 가지고 있는가

## final의 쓰임 3가지
* 변수 앞  = 상수화 (객체의 내용은 변경 가능)
* 클래스 앞 = 상속을 저지
* 메소드 앞 = 오버라이딩을 저지

## abstract 클래스
* 집합에 대한 개념, 인스턴스를 생성할 수 없다, 반드시 추상 클래스를 상속하는 자식 클래스에서 부모가 가진 추상 메소드를 모두 오버라이딩 해야 한다.

## 페키지를 쓰는 이유
* 이름 충돌을 방지하기 위해서 -> 소속 회사의 도메인을 거꾸로 사용하는게 보편적

## 자바 타입의 종류 
1. Primitive type (Built-in type) , Scala Type, Value Type =>
int, double, float, char, boolean, byte
2. Reference type (User-defined Type) => 모든 클래스 타입 (대문자로 시작)
Reference 타입으로 만드는 방법 3 가지 -> class, Array, enum

## SOLID = 객체지향 설계 5대 원칙
* => 정리한 사람 : Uncle Bob ( Robert C martine = clean code)
   
### SRP(Single Responsibility Principle)
: 단일 책임의 원칙
-> 모듈(변수, 함수, 클래스, 프로그램)은
단 하나의 책임을 가져야 한다.

### OCP(Open Close Principle)
: 개방 폐쇄의 원칙
-> 모듈은 수정에는 닫혀 있고, 확장에는 열려 있어야 한다.
:새로운 기능이 추가되어도, 기존 코드는 수정되면 안된다.

### LSP(Liskov Substitution Principle)
: 리스코프의 치환 원칙
-> 자식은 부모 클래스로 대체할 수 있어야 한다.
: 자식의 공통된 기능은 부모로부터 비롯되어야 한다.
=> 상속의 목적은 다형성이다.

### ISP(Interface Segregation Principle)
: 인터페이스 분리 원칙
MP3: play() / playOneMinute()
-> iPod: play()          Person {
iPhone: play()           void playMusic(MP3 mp3) { mp3.play(); }
}

: 범용 인터페이스(어떤 입출력 기기에도 적합하도록 구상된 인터페이스) 보다는 세분화된 인터페이스가 좋다.

### DIP(Dependency Inversion Principle)
: 의존관계 역전 원칙
=> 클라이언트는 구체적인 타입에 의존하는 것이 아니라,
인터페이스나 추상 클래스에 의존해야 한다.

## 메모리 영역 (Life cycle, 비용)
* Text ->  기계어 코드 저장되는 영역 (read-only) -> Segmentation Fault
* Data -> static (정적) 변수  -> 메모리 할당은 프로그램 시작부터 끝까지 -> 프로그램의 용량이 커지고, 메모리 사용량이 높아진다
* Heap (자유영역) -> new를 통해 생성된 객체,  원하는 시점에 생성,파괴가 가능한 메모/리, 상대적으로 느리다
* Stack -> 함수 실행, 함수 반환 주소값, 지역 변수, 메모리 할당은 함수가 시작할 때, 함수가 끝날 때 파괴 -> 메모리 생성과 해지의 비용이 거의 없다

* Data Structure - Stack(가장 나중에 들어간 것), Queue (가장 먼저 들어간 것)
* 우선순위는 큐
* => 데이터가 들어간 상관없이, 우선순위가 가장 높은 요소가 먼저 나온다
* Stack = 한쪽으로 데이터를 넣으면
* protected 를 사용하면 안 되는 이유 -> 재사용이 불가하다
* 자식 클래스가 부모의 기능을 이용할 때, 필드에 바로 접근하는 것이 아니라 메소드를 이용해야 한다
* 재사용은 포함이 좋다 (위임)

## Comparator (비교자), Comparable (비교 가능한)
* 비교자 : 정렬, 정렬을 할 때는 정책을 이용해야 한다
* 오름차순 (ascending), 내림 차순 (descending)
* Comparator (비교자) -> 내가 만든 객체가 아닐 경우 사용 -> 타입 안전성을 가지고 있다
* Comparable (비교 가능한) -> 내가 만든 객체일 경우 사용 -> 내가 만들게 아니면 사용할 수 없다, Object 타입이기 때문에 잘못된 타입이 올 수도 있다
* 데이터는 Stream 기반으로 처리하는게 좋다