# Ch_9
* class 는 변수(state) + 메소드(기능)

### 정보은닉 ( Information Hiding )
* 인스턴스 변수 private (접근제어 지시자) 이용 (외부에서 접근 금지)
* 인스턴스 변수 private 선언으로 인해 메소드가 유일한 접근수단

### 접근제어 지시자
| 지시자 | 클래스 내부 | 동일 패키지 | 상속받은 클래스 | 이외의 영역 |
|--|--|--|--|--|
| private | o | x | x | x |
| default | o | o | x | x |
| protected | o | o | o | x |
| public | o | o | o | o |

* public > protected > default > private

* private - 클래스 내부(메소드)에서만 접근 가능
* default - 접근제어 지시자 선언하지 않은 경우, 동일 패키지 내에서 접근 가능 (아무것도 선언하지 않은 것)
* protected - 상속관계에서도 접근 가능, default 선언으로 접근 가능한 영역 접근 가능 (class 관점으로 바라보기)
* public - 어디서든 접근 가능
 
## public 클래스와 default 클래스
* public 클래스 - 외부에서도 인스턴스 생성이 가능, 하나의 소스파일에 하나의 클래스만 public으로 선언, public 클래스 이름과 소스파일 이름은 일치해야 한다
* default 클래스 - 동일한 패키지 내에 정의된 클래스에 의해서만 인스턴스 생성이 가능

### 생성자는 public, 클래스는 default
* 동일 패키지내에서만 인스턴스 생성 가능 (default 적용, public 적용 불가)

### default 생성자
* 디폴트 생성자의 접근제어 지시자는 클래스의 선언형태에 따라 결정

### 캡슐화 (Encapsulation)
* 캡슐화를 하지 않으면 클래스의 사용을 위해 알아야 할 것들이 많아진다
* 캡슐화는 관련 있는 모든 메소드와 변수를 하나의 클래스로 묶는 것