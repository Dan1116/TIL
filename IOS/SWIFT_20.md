#  SWIFT_20
* 프로토콜 = 특정 역할을 하기 위한 메서드, 프로퍼티, 기타 요구사항 등의 청사진을 정의한다
* 구조체, 클래스, 열거형은 프로토콜을 채택해서 특정 기능을 실행하기 위한 프로토콜의 요구사항을 실제로 구현할 수 있다
* 프로토콜은 정의를 하고 제시를 할 뿐이지 스스로 기능을 구현하지는 않는다
* 프로토콜은 타입이 특정 기능을 실행하기 위해 필요한 기능을 요구한다, 프로토콜이 자신을 채택한 타입에 요구하는 사항은 프로퍼티나 메서드와 같은 기능들이다
* 프로토콜을 채택한 타입은 프로토콜이 요구하는 프로퍼티의 이름과 타입만 맞도록 구현해주면 된다, 쓰기만 가능한 프로퍼티는 없다
*  Sendable 프로토콜은 무언가의 전송을 가능하게 하기 위한 프로퍼티인 from과 to를 요구
* 프로토콜은 특정 인스턴스 메서드나 타입 메서드를 요구할 수도 있다, 프로토콜이 요구할 메서드는 프로토콜 정의에서 작성한다
* 프로토콜의 메서드 요구에서는 매개변수 기본값을 지정할 수 없다

* 타입으로서의 프로토콜 ->
* 1. 함수, 메서드, 이니셜라이저에서 매개변수 타입이나 반환 타입으로 사용될 수 있다
* 2. 프로퍼티, 변수, 상수 등의 타입으로 사용 될 수 있다
* 3. 배열, 딕셔너리 등 컨테이너 요소의 타입으로 사용 될 수 있다

* 값 타입의 인스턴스 메서드에서 자신 내부의 값을 변경하고자 할 때는 메서드의 func 키워드 앞에 mutating 키워드를 적는다
* 하나의 매개변수가 여러 프로토콜을 모두 준수하는 타입이어야 한다면 하나의 매개변수에 여러 프로토콜을 한 번에 조합하여 요구할 수 있다, 또 하나의 매개변수가 프로토콜을 둘 이상 요구할 수 있다, 이때도 앰퍼샌드(&)를 여러 프로토콜 사이에 넣어주면 된다
* is 연산자를 통해 해당 인스턴스가 특정 프로토콜을 준수하는지 확인 할 수 있다
* as? 다운캐스팅 연산자를 통해 다른 프로토콜로 다운캐스팅을 시도해 볼 수 있다
* as! 다운캐스팅 연사자를 통해 다른 프로토콜로 강제 다운캐스팅 할 수 있다 