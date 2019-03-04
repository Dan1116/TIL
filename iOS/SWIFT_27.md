# SWIFT_27
## ARC
* 매번 전달할 때마다 값을 복사해 전달하는 값 타입과는 달리 참조 타입은 하나의 인스턴스가 참조를 통해 여러 곳에서 접근하기 때문에 언제 메모리에서 해제되는지가 중요한 문제이다
* ARC가 관리해주는 참조 횟수 계산은 참조 타입인 클래스의 인스턴스에만 적용된다, 구조체나 열거형은 값 타입이므로 참조 횟수 계산과 무관하다
* 구조체나 열거형은 다른 곳에서 참조하지 않기 때문에 ARC로 관리할 필요가 없다

### ARC란
* ARC란 자동으로 메모리를 관리해주는 방식이다 
* ARC는 더 이상 필요하지 않은 클래스의 인스턴스를 메모리에서 해제하는 방식으로 동작한다
* ARC는 인스턴스가 언제 메모리에서 해제되어야 할지를 컴파일과 동시에 결정한다
* 클래스의 인스턴스를 생성할 때마다 ARC는 그 인스턴스에 대한 정보를 저장하기 위한 메모리 공간을 따로 또 할당한다 (그 메모리 공간에는 인스턴스의 타입의 정보와 함께 그 인스턴스와 관련된 저장 프로퍼티의 값 등을 저장한다)

### ARC 와 가비지 컬렉션의 차이

#### ARC
* 참조 카운팅 시점 = 컴파일 시
* 장점 = 컴파일 당시 이미 인스턴스의 해제 시점이 정해져 있어서 인스턴스가 언제 메모리에서 해제 될지 예측할 수 있고 메모리 관리를 위한 시스템 자원을 추가할 필요가 없다
* 단점 = ARC의 작동 규칙을 모르고 사용하면 인스턴스가 메모리에서 영원히 해제되지 않을 가능성이 있다

#### 가비지 컬렉션 (GC)
* 참조 카운팅 시점 = 프로그램 동작 중
* 장점 = 상호 참조 상황 등의 복잡한 상황에서도 인스턴스를 해제할 수 있는 가능성이 더 높고 특별히 규칙에 신경 쓸 필요가 없다
* 단점 = 프로그램 동작 외에 메모리 감시를 위한 추가 자원이 필요하므로 한정적인 자원 환경에서는 성능 저하가 발생할 수 있다, 또한 명확한 규칙이 없기 때문에 인스턴스가 정확히 언제 메모리에서 해제될지 예측하기 어렵다

### 강한참조
* 인스턴스가 계속해서 메모리에 남아있어야 하는 명분을 만들어 주는 것이 바로 강한 참조 이다
* 인스턴스를 다른 인스턴스의 프로퍼티나 변수, 상수 등에 할당할 때 강한참조를 사용하면 횟수가 1증가 한다
* 강한 참조를 사용하는 프로퍼티, 변수, 상수 등에 nil 을 할당해주면 원래 자신에게 할당되어 있는 인스턴스의 참조 횟수가 1 감소한다
* 참조의 기본은 강한참조이므로 클래스 타입의 프로퍼티, 변수, 상수 등을 선언할 때 별도의 식별자를 명시하지 않으면 강한참조를 한다

### 강한참조 순환 문제
* 변수 또는 프로퍼티에 nil을 할당하면 참조 횟수가 감소한다는 규칙을 잘 이용해서 인스턴스를 메모리에서 잘 해제해야 한다, 하지만 실수로 코드를 빼 먹는다면 문제가 발생한다

### 약한참조
* 약한참조는 강한참조와 달리 자신이 참조하는 인스턴스의 참조 횟수를 증가시키지 않는다
* 참조 타입의 프로퍼티나 변수의 선언 앞에 weak 키워드를 써주면 그 프로퍼티나 변수는 자신이 참조하는 인스턴스를 약한참조 한다
* 약한 참조는 상수에서 쓰일 수 없다, 만약 자신이 참조하던 인스턴스가 메모리에서 해제 된다면 nil이 할당될 수 있어야 하기 때문이다
* 약한참조를 할 때는 자신의 값을 변경할 수 있는 변수로 선언해야 한다, 더불어 nil이 할당될 수 있어야 하므로 약한 참조는 항상 옵셔널이어야 한다, 즉 옵셔널 변수만 약한참조가 가능

### 미소유참조
* 참조 횟수를 증가시키지 않고 참조할 수 있는 방법은 약한참조만 있는 것은 아니다, 미소유참조도 인스턴스의 참조 횟수를 증가시키지 않는다
* 미소유참조는 약한참조와 다르게 자신이 참조하는 인스턴스가 항상 메모리에 존재할 것이라는 전제를 기반으로 동작한다
* 자신이 참조하는 인스턴스가 메모리에서 해제되더라도 스스로 nil을 할당해주지 않으므로 옵셔널이나 변수가 아니여도 된다
* 미소유참조는 참조하는 동안 해당 인스턴스가 메모리에서 해제되지 않으리라는 확신이 있을 때만 사용해야 한다
* 참조 타입의 변수나 프로퍼티의 정의 앞에 unowned 키워드를 써주면 그 변수나 프로퍼티는 자신이 참조하는 인스턴스를 미소유참조하게 된다

### 미소유참조와 암시적 추출 옵셔널 프로퍼티
* 서로 참조해야 하는 프로퍼티에 값이 꼭 있어야 하면서도 한번 초기화되면 그 이후에는 nil을 할당할 수 없는 조건을 갖추어야 하는 경우 쓰이는 방법
* 암시적 추출 옵셔널 프로퍼티는 이니셜라이저의 2단계 초기화 조건을 충족시키기 위해 사용된다

### 클로저의 강한참조 순환
* 강한 참조의 순환 문제는 두 인스턴스끼리의 참조일 때만 발생하는 것 외에 클로저가 인스턴스의 프로퍼티일 때나, 클로저의 값 획득 특성 때문에 발생한다
* 강한참조 순환이 발생하는 이유는 클로저가 클래스와 같은 참조 타입이기 때문이다
* 클로저를 클래스 인스턴스의 프로퍼티로 할당하면 클로저의 참조가 할당, 이때 참조 타입과 참조 타입이 서로 강한참조를 하기 때문에 강한참조 순환 문제가 발생한다
* 클로저의 강한참조 순환 문제는 클로저의 획득 목록을 통해 해결할 수 있다
* 클로저 내부에서 self 프로퍼티를 여러 번 호출하여 접근하여도 참조 횟수는 한 번만 증가한다

### 획득목록
* 획득목록은 클로저 내부에서 참조 타입을 획득하는 규칙을 제시해줄 수 있는 기능이다
* 클로저의 내부의 self 참조를 약한참조로 지정할 수도 강한참조로 지정할 수도 있다
* 획득목록을 사용하면 때에 따라서, 혹은 각 관계에 따라서 참조 방식을 클로저에 제안할 수 있다
* 획득목록은 클로저 내부의 매개변수 목록 이전 위치에 작성, 획득목록은 참조 방식과 참조할 대상을 대괄호 [] 로 둘러싼 목록 형식으로 작성, 획득목록 뒤에는 in 키워드를 써준다
* 획득목록에 명시한 요소가 참조 타입이 아니라면 해당 요소들은 클로저가 생성될 때 초기화 된다
* 클로저의 획득 특성 때문에 클로저가 프로퍼티로 사용될 경우 발생할 수 있는 강한참조 순환 문제는 클로저의 획득목록을 통해 해결 가능하다