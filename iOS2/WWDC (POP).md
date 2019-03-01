# WWDC (POP)
## Classes 
* Encapsulation =>  Can group related data and operations.
* 관련 데이터 및 작업을 그룹화 할 수 있다
* Access Control => Can build walls to separate the inside of our code from the outside, and that is what lets us maintain invariants.
* 외부와 코드의 내부를 구분하는 벽을 만들 수 있으므로 불변성을 유지하게 한다
* Abstraction => We use classes to represent relatable ideas, like window or communication channel.
* 창이나 커뮤티케이션 채널과 같은 관련성이 있는 아이디어를 표현하기 위해 클래스를 사용한다
* Namespace => Which helps prevent collisions as our software grows.
* 소프트웨어의 크기가 커짐에 따라 충돌을 방지하는 데 도움이 된다
* Expressive Syntax  => We can write method calls and properties and chain them together, we can make subscripts, we can even make properties that do computation.
* 메소드 호출과 프로퍼티를 작성하고 함께 묶을 수도 있고, subscripts를 만들 수도 있고, 계산을 수행하는 프로퍼티를 만들 수도 있다
* Extensibility => So if a class author leaves something out that I need, I can come along and add it later.
* 클래스 작성자가 필요한 항목을 남겨두면 나중에 추가할 수 있다

## 클래스에서 가장 중요한 3가지
### These things let us manage complexity
* 복잡성을 관리하는 중요한 3가지
* Access Control
* Abstraction
* Namespace

## Classes 의 3가지 문제점
1. You got your automatic sharing => 자동 공유 기능
2. Class inheritance is too intrusive it’s monolithic => 클래스 상속이 너무 복잡하다 (한 덩어리다)
3. Classes just turn out to be a really bad fit for problems where type relationships matter => 클래스는 타입 관계가 중요한 문제에 적합하지 않다 ->  Classes don’t let us express this crucial type relationship between the type of self and the type of other => 클래스는 자기의 유형과 다른 유형 사이에 중요한 유형 관계를 표현하지 않는다

## I can do all that with structs and enums
* 구조체와 열거형을 사용해서 클래스가 하는 모든 것들을 할 수 있다

## 프로토콜 (POP)
* In Swift, any type you can name is a first class citizen and it’s able to take advantage of all these capabilities
* 스위프트에서는 이름을 짓는 모든 유형이 일급 객체이다

* A superclass can define a substantial method with complex logic, and subclasses get all of the work done by the superclass for free.
* 슈퍼 클래스는 복잡한 로직을 가진 실질적인 메소드를 정의할 수 있으며, 서브 클래스는 슈퍼 클래스가 수행 한 모든 작업을 무료로 처리한다

* But the real magic happens when the superclass author breaks out a tiny part of that operation into a separate customization point that the subclass can override, and this customization is overlaid on the inherited implementation. That allows the difficult logic to be reused while enabling open-ended flexibility and specific variations.
* 그러나 슈퍼 클래스 제작자가 그 작업의 아주 작은 부분을 하위 클래스가 재정의 할 수 있는 별도의 사용자 지정 지점으로 나누면 상속 된 구현에 중첩됩니다. 따라서 개방형 유연성과 특정 변형을 가능하게하면서 어려운 논리를 재사용 할 수 있다

* It’s because Swift collections are all value types, so the one you’re iterating and the one you’re modifying are distinct.
* Swift 컬렉션은 모두 값 유형이기 때문에 반복되는 컬렉션과 수정하려는 컬렉션이 구분된다

* Protocols give us a principled interface that we can use, that’s enforced by the language, but still gives us the hooks to plug in all of the instrumentation we need.
* 프로토콜은 우리가 사용할 수 있는 원칙적인 인터페이스를 제공합니다. 즉, 언어에 의해 시행되지만, 필요한 모든 계측 도구를 연결할 수 있는 고리를 제공합니다.

* Protocol requirement creates a customization point.
* 프로토콜 요구 조건은 사용자 지정 지점을 생성한다

* It’s the reference types that have this stable identity, so if you’re going to make something that corresponds to an external entity, you might want to make it a reference type. A class.
* 클래스는 안정적인 ID를 갖는 참조 유형입니다. 따라서 외부 독립체에 해당하는 항목을 만들려면 참조 유형으로 만들어야 한다

* So, when you’re refactoring and factoring something out of class, consider using a value type instead.
* 클래스를 벗어나는 것을 팩토리링하거나 리팩토링 할 때는 값 유형을 사용해라

* Protocols, much greater than superclasses for abstraction 
* 추상화를 위한 슈퍼 클래스보다 뛰어난 것은 프로토콜이다
* Protocol extensions, this new feature to let you do almost magic things
* 프로토콜 확장은 거의 마술과 같은 것이다