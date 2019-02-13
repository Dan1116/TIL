# SWIFT_18
* 클래스는 메서드나 프로퍼티 등을 다른 클래스로부터 상속받을 수 있다, 어떤 클래스로부터 상속을 받으면 상속받은 클래스는 그 어떤 클래스의 자식클래스라고 표현
* 자식클래스에게 자신의 특성을 물려준 클래스를 부모클래스라고 표현, 상속은 스위프트의 다른 타입과 클래스를 구별 짓는 클래스만의 특징
* 스위프트의 클래스는 부모클래스로부터 물려받은 메서드를 호출할 수 있고 프로퍼티에 접근할 수 있으며 서브스크립트도 사용할 수 있다, 또한 부모클래스로부터 물려받은 메서드, 프로퍼티, 서브스크립트 등을 자신만의 내용으로 재정의할 수도 있다 
* 스위프트는 부모클래스의 요소를 자식클래스에서 재정의할 때 자식 클래스가 부모클래스의 요소들을 재정의한다는 것을 확인해주어야 한다
* 상속받은 프로퍼티에 프로퍼티의 값이 변경되었을 때 알려주는 프로퍼티 감시자도 구현할 수 있다, 연산 프로퍼티를 정의해준 클래스에서는 연산 프로퍼티에 프로퍼티 감시자를 구현할 수 없지만, 부모클래스에서 연산 프로퍼티로 정의한 프로퍼티든 저장 프로퍼티로 정의한 프로퍼티든 자식 클래스에서는 프로퍼티 감시자를 구현할 수 있다
* 다른 클래스로부터 상속을 받지 않은 클래스를 기반클래스라고 부른다
* 클래스 이름 뒤에 콜론을 붙이고 다른 클래스 이름을 써주면 뒤에 오는 클래스의 기능을 앞의 클래스가 상속받을 것임을 뜻한다
* 재정의 = 자식클래스는 부모클래스로부터 물려받은 특성을 그대로 사용하지 않고 자신만의 기능으로 변경하여 사용하는 방법
* 상속받은 특성들을 재정의하려면 새로운 정의 앞에 override 키워드를 사용, override 키워드는 스위프트 컴파일러가 조상클래스에 해당 특성이 있는지 확인한 후 재정의하게 된다
* 만약 자식클래스에서 부모클래스의 특성을 재정의했을 때, 부모클래스의 특성을 자식클래스에서 사용하고 싶다면 super 프로퍼티를 사용하면 된다
* super 키워드를 타입 메서드 내에서 사용한다면, 부모클래스의 타입 메서드와 타입 프로퍼티에 접근할 수 있으며 인스턴스 메서드 내에서 사용한다면, 부모클래스의 인스턴스 메서드와 인스턴스 프로퍼티, 서브스크립트에 접근할 수 있다
* 재정의한 someMethod()의 부모 버전을 호출하고 싶다면 super.someMethod()로 호출하면 된다
* 재정의한 someProperty의 부모 버전에 접근하고 싶다면 super.someProperty로 접근하면 된다
* 재정의한 서브스크립트에서 부모 버전의 서브스크립트로 접근하고 싶다면 super[index]로 접근하면 된다
* 스위프트는 메서드의 반환 타입이나 매개변수가 다르면 서로 다른 메서드로 취급한다, 서로 다른 타입의 반환 값을 받아오기 위해서는 as 연산자를 사용해야 한다
* 메서드와 마찬가지로 부모클래스로부터 상속받은 인스턴스 프로퍼티나 타입 프로퍼티를 자식 클래스에서 용도에 맞게 재정의할 수 있다
* 프로퍼티를 재정의할 때는 저장 프로퍼티로 재정의할 수 없다, 프로퍼티를 재정의한다는 것은 프로퍼티 자체가 아니라 프로퍼티의 접근자, 설정자, 프로퍼티 감시자등의 재정의하는 것을 의미한다
* 조상클래스에서 저장 프로퍼티로 정의한 프로퍼티는 물론이고 연산 프로퍼티로 정의한 프로퍼티도 접근자와 설정자를 재정의할 수 있다, 프로퍼티를 상속받은 자식클래스에서는 조상 클래스의 프로퍼티 종류 (저장,연산) 는 알지 못하고 단지 이름과 타입만을 알기 때문이다
* 재정의하려는 프로퍼티는 조상클래스 프로퍼티의 이름과 타입이 일치해야 한다
* 읽기 쓰기 모두 가능했던 프로퍼티를 읽기 전용으로 재정의할 수는 없다, 읽기 쓰기가 모두 가능한 프로퍼티를 재정의할 때 설정자만 따로 재정의할 수는 없다, 즉 접근자와 설정자를 모두 재정의해야 한다
* 만약 접근자에 따로 기능 변경이 필요 없다면 super.someProperty와 같은 식으로 부모클래스의 접근자를 사용하여 값을 받아와 반환해주면 된다
* 프로퍼티 감시자도 프로퍼티의 접근자와 설정자처럼 재정의할 수 있다, 조상 클래스에 정의한 프로퍼티가 연산 프로퍼티인지 저장 프로퍼티인지는 상관없다
* 상수 저장 프로퍼티나 읽기 전용 연산 프로퍼티는 프로퍼티 감시자를 재정의할 수 없다, 상수저장 프로퍼티나 읽기 전용 연산 프로퍼티는 값을 설정할 수 없으므로 willSet 이나 didSet 메서드를 사용한 프로퍼티 감시자를 원천적으로 사용할 수 없기 때문이다
* 프로퍼티의 접근자와  프로퍼티 감시자는 동시에 재정의할 수 없다, 둘 다 동작하길 원한다면 재정의하는 접근자에 프로퍼티 감시자의 역할을 구현해야 한다
* 서브스크립트도 메서드와 마찬가지로 재정의가 가능, 서브스크립트도 매개변수와 반환 타입이 다르면 다른 서브스크립트로 취급하므로, 자식 클래스에서 재정의하려는 서브스크립트라면 부모클래스 서브스크립트의 매개변수와 반환 타입이 같아야 한다
* 부모클래스를 상속받는 자식클래스에서 몇몇 특성을 재정의할 수 없도록 제한하고 싶다면  재졍의를 방지하고 싶은 특성 앞에 final 키워드를 명시하면 된다
* 지정 이니셜라이저는 클래스의 주요 이니셜라이저이다, 지정 이니셜라이저는 필요에 따라 부모클래스의 이니셜라이저를 호출할 수 있으며, 이니셜라이저가 정의된 클래스의 모든 프로퍼티를 초기화해야 하는 임무를 갖고 있다
* 지정 이니셜라이저는 클래스에 하나 이상 정의한다
* 편의 이니셜라이저는 초기화를 좀 더 손쉽게 도와주는 역할을 한다, 편의 이니셜라이저는 지정 이니셜라이저를 자신 내부에서 호출한다
* 지정 이니셜라이저의 매개변수가 많아 외부에서 일일이 전달인자를 전달하기 어렵거나 특정 목적에 사용하기 위해서 편의 이니셜라이저를 설계할 수도 있다
* 자식 클래스의 지정 이니셜라이저는 부모클래스의 지정 이니셜라이저를 반드시 호출해야 한다
* 편의 이니셜라이저는 자신을 정의한 클래스의 다른 이니셜라이저를 반드시 호출해야 한다
* 편의 이니셜라이저는 궁극적으로는 지정 이니셜라이저를 반드시 호출해야 한다
* 스위프트의 클래스 초기화는 2단계가 필요하다 ->
* 1. 클래스에 정의한 각각의 저장 프로퍼티에 초기값이 할당 된다, 모든 저장 프로퍼티의 초기 상태가 결정되면 2단계로 돌입해 저장 프로퍼티들을 사용자정의할 기회를 얻는다, 그 후 비로소 새로운 인스턴스를 사용할 준비가 끝난다
* 2. 프로퍼티를 초기화하기 전에 프로퍼티 값에 접근하는 것을 막아 초기화를 안전하게 할 수 있도록 해준다, 다른 이니셜라이저가 프로퍼티의 값을 실수로 변경하는 것을 방지할 수도 있다
* 스위프트 컴파일러는 2단계 초기화를 오류 없이 처리하기 위해 4가지 안전 확인을 한다 ->
* 1. 자식클래스의 지정 이니셜라이저가 부모클래스의 이니셜라이저를 호출하기 전에 자신의 프로퍼티를 모두 초기화했는지 확인한다
* 2. 자식클래스의 지정 이니셜라이저는 상속받은 프로퍼티에 값을 할당하기 전에 반드시 부모클래스의 이니셜라이저를 호출해야 한다
* 3. 편의 이니셜라이저는 자신의 클래스에 정의한 프로퍼티를 포함하여 그 어떤 프로퍼티라도 값을 할당하기 전에 다른 이니셜라이저를 호출해야 한다
* 4. 초기화 1단계를 마치기 전까지는 이니셜라이저는 인스턴스 메서드를 호출할 수 없다, 또 인스턴스 프로퍼티의 값을 읽어들일 수도 없다, self 프로퍼티를 자신의 인스턴스를 나타내는 값으로 활용할 수도 없다

### 1단계
* 네 가지 안전확인에 근거하여 어떻게 2단계 초기화가 이루어지는지 설명 ->
* 1. 클래스가 지정 또는 편의 이니셜라이저를 호출
* 2. 그 클래스의 새로운 인스턴스를 위한 메모리가 할당된다, 메모리는 아직 초기화되지 않은 상태
* 3. 지정 이니셜라이저는 클래스에 정의된 모든 저장 프로퍼티에 값이 있는지 확인, 현재 클래스 부분까지의 저장 프로퍼티를 위한 메모리는 이제 초기화 되었다
* 4. 지정 이니셜라이저는 부모클래스의 이니셜라이저가 같은 동작을 행할 수 있도록 초기화를 양도한다
* 5. 부모클래스는 상속 체인을 따라 최상위 클래스에 도달할 때까지 이 작업을 반복한다
* 6. 최상위 클래스에 도달했을 때, 최상위 클래스까지의 모든 저장 프로퍼티에 값이 있다고 확인하면 해당 인스턴스의 메모리는 모두 초기화된 것이다

### 2단계
* 1. 최상위 클래스로부터 최하위 클래스까지 상속 체인을 따라 내려오면서 지정 이니셜라이저들이 인스턴스를 제 각각 사용자정의하게 된다, 이 단계에서는 self를 통해 프로퍼티 값을 수정할 수 있고, 인스턴스 메서드를 호출하는 등의 작업을 진행 할 수 있다
* 2. 마지막으로 각각의 편의 이니셜라이저를 통해 self를 통한 사용자정의 작업을 진행할 수 있다

* 기본적으로 스위프트의 이니셜라이저는 부모클래스의 이니셜라이저를 상속받지 않는다, 부모클래스로부터 물려받은 이니셜라이저는 자식클래스에 최적화되어 있지 않아서 부모클래스의 이니셜라이저를 사용했을 때 자식 클래스의 새로운 인스턴스가 완전하고 정확하게 초기화되지 않는 상황을 방지하고자 함이다
* 보통 부모클래스의 이니셜라이저와 똑같은 이니셜라이저를 자식클래스에서 사용하고 싶다면 자식클래스에서 부모의 이니셜라이저와 똑같은 이니셜라이저를 구현해주면 된다
* 기본 이니셜라이저 외에 지정 이니셜라이저를 자식클래스에서 동일한 이름으로 정의하려면 재정의를 위한 override 수식어를 명시해주어야 한다
* 자식클래스에서 프로퍼티 기본값을 모두 제공한다고 가정할 때 다음 두 가지 규칙에 따라 이니셜라이저가 자동으로 상속된다 ->
* 1. 자식클래스에서 별도의 지정 이니셜라이저를 구현하지 않는다면, 부모클래스의 지정 이니셜라이저가 자동으로 상속된다
* 2. 만약 규칙 1에 따라 자식클래스에서 부모클래스의 지정 이니셜라이저를 자동으로 상속받은 경우 또는 부모클래스의 지정 이니셜라이저를 모두 재정의하여 부모클래스와 동일한 지정 이니셜라이저를 모두 사용할 수 있는 상황이라면 부모클래스의 편의 이니셜라이저가 모두 자동으로 상속된다
* required 수식어를 클래스의 이니셜라이저 앞에 명시해주면 이 클래스를 상속받은 자식클래스에서 반드시 해당 이니셜라이저를 구현해주어야 한다, 상속받을 때 반드시 재정의해야 하는 이니셜라이저 앞에 required 수식어를 붙여준다