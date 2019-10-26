# lateinit
* lateinit 은 꼭 변수를 부르기 전에 초기화 시켜야 한다
* var 에서만 사용이 가능하다 (mutable)
* var 이기 때문에 초기화를 변경할 수 있다
* null 을 통한 초기화를 할 수 없다
* 초기화를 하기 전에는 변수에 접근할 수 없다
* 변수에 대한 setter / getter properties 정의가 불가능하다
* lateinit 은 모든 변수가 가능한 건 아니고, primitive type 에서는 활용이 불가능하다
* lateinit 초기화를 확인 하는 방법은 실제 값을 사용할 때 lateinit 을 한번 체크해줌으로써 안전하게 접근할 수 있다, 이때 ::을 통해서만 접근이 가능한 .isInitialized 을 사용하여 체크할 수 있다

## lateinit 디컴파일
* 디컴파일한 코드를 통해 lateinit 이 어떤 식으로 동작하는지 확인이 가능하다
* 초기화를 하지 않으면 해당 메소드에 접근이 불가능하다

# lazy properties
* lateinit 은 필요할 경우 언제든 초기화가 가능한 Properties 이다
* lazy 초기화는 기존 val 변수 선언에 by lazy 를 추가함으로 lazy {} 에 생성과 동시에 값을 초기화하는 방법을 사용한다
* 호출 시점에 by lazy 정의에 의해서 초기화를 진행한다
* val 에서만 사용이 가능하다
* val 이므로 값을 교체하는 건 불가능하다
* 초기화를 위해서는 함수명이라도 한번 적어줘야 한다
* lazy 를 사용하는 경우 기본 Synchronized 로 동작한다

