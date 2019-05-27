# implements, Extends, this
## implements 와 Extends의 차이점
* extends는 클래스를 확장할 때 사용하고 implements는 인터페이스를 구현할 때 사용한다
* 인터페이스는 정의한 메소드를 구현하지 않아도 된다
* 인터페이스를 상속받는 클래스에서 인터페이스에 정의된 메소드를 구현하면 된다
* extends는 일반 클래스와 abstract 클래스 상속에 사용되고, implements 는 interface 상속에 사용된다
* class 가 class를 상속받을 땐 extends를 사용, interface 가 interface 를 상속받을 땐 implements 를 사용한다
* class 가 interface를 사용할 땐 implements를 써야하지만 interface가 class 를 사용할땐 implements를 사용할 수 없다
* extends는 클래스 한 개만 상속받을 수 있고 부모 클래스의 기능을 사용한다
* implements 는 여러개 사용 가능, 설계 목적으로 구현 가능하다
* implements 한 클래스는 implements 의 내용을 다 사용해야 한다

## this
* 자바에서 this 는 자기 자신을 말한다
* 클래스의 속성과 생성자/메소드의 매개변수의 이름이 같은 경우 -> 클래스 속성을 사용할 때 this 키워드를 붙여준다
* 클래스에 오버로딩된 다른 생성자 호출 -> 생성자의 최상단에 사용되어야 한다
* 객체 자신의 참조값을 전달하고 싶을 때 사용한다