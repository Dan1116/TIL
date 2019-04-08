# JAVA8_3
## 람다 표현식
* 동작 파라미터화를 이용하면 더 유연하고 재사용할 수 있는 코드를 만들 수 있다
* 람다 표현식은 익명 클래스처럼 이름이 없는 함수면서 메서드를 인수로 전달할 수 있으므로 일단은 람다 표현식이 익명 클래스와 비슷한 것이라고 생각하면 된다
* 람다 표현식은 이름은 없지만 파라미터 리스트, 바디, 반환 형식, 발생할 수 있는 예외 리스트는 가질 수 있다
* 한번만 사용할 것은 익명 클래스를 이용하는 것이 좋다
* 함수형 인터페이스는 하나의 추상 메서드만을 정의하는 인터페이스다
* 람다 표현식을 이용해서 함수형 인터페이스의 추상 메서드를 즉석으로 제공할 수 있으며, 람다 표현식 전체가 함수형 인터페이스의 인스턴스로 취급된다
* 실행 어라운드 패턴을 람다와 활용하면 유연성과 재사용성을 얻을 수 있다
* 람다 표현식의 기대 형식을 대상 형식이라고 한다
* 함수형 메서드의 추상 메서드 시그너처를 함수 디스크립터라고 한다

### 람다의 특징
1. 익명, 보통의 메서드와 달리 이름이 없으므로 익명이라 표현한다, 구현해야 할 코드에 대한 걱정거리가 줄어든다
2. 함수, 람다는 메서드처럼 특정 클래스에 종속되지 않으므로 함수라고 부른다, 하지만 메서드처럼 파라미터 리스트, 바디, 반환 형식, 가능한 예외 리스트를 포함한다
3. 전달, 람다 표현식을 메서드 인수로 전달하거나 변수로 저장할 수 있다
4. 간결성, 익명 클래스처럼 많은 자질구레한 코드를 구현할 필요가 없다

* 람다를 이용해서 간결한 방식으로 코드를 전달할 수 있다
* 함수형 인터페이스라는 문맥에서 람다 표현식을 사용할 수 있다

## 함수형 인터페이스
* 함수형 인터페이스는 정확히 하나의 추상 메서드를 지정하는 인터페이스이다
* 인터페이스는 디폴트 메서드 (인터페이스의 메서드를 구현하지 않은 클래스를 고려해서 기본 구현을 제공하는 바디를 포함하는 메서드)를 포함할 수 있다 많은 디폴트 메서드가 있더라도 추상 메서드가 오직 하나면 함수형 인터페이스이다
* 람다 표현식으로 함수형 인터페이스의 추상 메서드 구현을 직접 전달할 수 있으므로 전체 표현식을 함수형 인터페이스의 인스턴스로 취급 할 수 있다
* @FunctionalInterface는 함수형 인터페이스임을 가리키는 어노테이션이다

### 함수 디스크립터
* 함수형 인터페이스의 추상 메서드 시그너처는 람다 표현식의 시그너처를 가리킨다, 람다 표현식의 시그너처를 서술하는 메서드를 함수 디스크립터라고 부른다
* 람다 표현식은 변수에 할당하거나 함수형 인터페이스를 인수로 받는 메서드로 전달할 수 있으며, 함수형 인터페이스의 추상 메서드와 같은 시그너처를 갖는다는 사실을 기억해야한다

## 람다 활용: 실행 어라운드 패턴
* 자원처리에 사용하는 순환 패턴은 자원을 열고, 처리한 다음에, 자원을 닫는 순서로 이루어진다, 설정과 정리 과정은 대부분 비슷하다, 즉 실제 자원을 처리하는 코드를 설정과 정리 두 과정이 둘러싸는 형태를 갖는다
* 예 ) try (BufferedReader br = 
		new BufferedReader (new FileReader(“data.txt”))) {
	return br.readline();
}

## Predicate
* java.util.function.Predicate<T> 인터페이스는 test 라는 추상 메서드를 정의하여 test 는 제네릭 형식 T의 객체를 인수로 받아 불린을 반환한다

## Consumer
* java.util.function.Consumer<T> 인터페이스는 제네릭 형식 T 객체를 받아서 void를 반환하는 accept 라는 추상 메서드를 정의한다
* T 형식의 객체를 인수로 받아서 어떤 동작을 수행하고 싶을 때 Consumer 인터페이스를 사용할 수 있다

## Function
* java.util.function.Function<T,R> 인터페이스는 제네릭 형식 T를 인수로 받아서 제네릭 형식 R 객체를 반환하는 apply 라는 추상 메서드를 정의한다
* 입력을 출력으로 매핑하는 람다를 정의할 떄 Function 인터페이스를 활용할 수 있다

## 기본형 특화
* 자바의 모든 형식은 참조형 아니면 기본형에 해당한다, 하지만 제네릭 파라미터에는 참조형만 사용할 수 있다
* 박싱 = 기본형을 참조형으로 변환하는 기능
* 오토 박싱  = 박싱과 언박싱이 자동으로 이루어지는 기능

## 형식 검사
* 람다가 사용되는 콘텍스트를 이용해서 람다의 형식을 추론할 수 있다, 어떤 콘텍스트에서 기대되는 람다 표현식의 형식을 대상 형식(target type) 이라 부른다 

## 같은 람다, 다른 함수형 인터페이스
* 대상 형식이라는 특징 때문에 같은 람다 표현식이더라도 호환되는 추상 메서드를 가진 다른 함수형 인터페이스로 사용될 수 있다

## 형식 추론
* 대상 형식을 이용해서 함수 디스크립터를 알 수 있으므로 컴파일러는 람다의 시그너처도 추론할 수 있다, 결과적으로 컴파일러는 람다 표현식의 파라미터 형식에 접근할 수 있으므로 람다 문법에서 이를 생략할 수 있다

## 지역 변수 사용
* 람다 표현식에서는 익명 함수가 하는 것처럼 자유 변수를 활용할 수 있다, 이와 같은 동작을 람다 캡처링이라고 부른다
* 람다는 인스턴스 변수와 정적 변수를 자유롭게 캡처 할 수 있다 하지만, 그러려면 지역 변수는 명시적으로 final 선언되어 있어야 하거나 실질적으로 final로 선언된 변수와 똑같이 사용되어야 한다

### 지역 변수의 제약
* 인스턴스 변수는 힙에 저장되는 반면에 지역 변수는 스택에 위치한다
* 복사본의 값이 바뀌지 않아야 하므로 지역 변수에는 한 번만 값을 할당해야 한다

## 메서드 레퍼런스
* 메서드 레퍼런스를 이용하면 기존의 메서드 정의를 재활용해서 람다처럼 전달할 수 있다
* 메서드 레퍼런스는 특정 메서드만을 호출하는 람다의 축약형이라고 생각할 수 있다
* 실제로 메서드 레퍼런스를 이용하면 기존 메서드 구현으로 람다 표현식을 만들 수 있다 그러면 가독성을 높일 수 있다 (메서드명을 참조함으로써)

### 세 가지 유형의 메서드 레퍼런스
1. 정적 메서드 레퍼런스
2. 다양한 형식의 인스턴스 메서드 레퍼런스 
3. 기존 객체의 인스턴스 메서드 레퍼런스 

## 생성자 레퍼런스
* new 키워드를 이용해서 기존 생성자의 레퍼런스를 만들 수 있다
* 인스턴스화하지 않고도 생성자에 접근할 수 있는 기능을 다양한 상황에 응용할 수 있다