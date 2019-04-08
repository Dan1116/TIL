# Thread, Generic And Collection framework
## Thread 
### 프로세스와 스레드 비교
1. 프로세스
	1. 프로그램
	2. 보통 한 프로그램이 한 프로세스
	3. 한 프로그램이 여러 프로세스를 실행할 수도 있다

2. 스레드
		1. 최소실행단위
		2. 멀티 스레드 가능 (한 프로세스 안에서 여러 스레드가 실행)
		3. 프로세스 안의 실행 단위

### main 스레드
* main ( ) 메서드를 실행
* 다른 스레드를 생성하고 실행한다

### 생성/실행
	1. 코드
		1. Runnable 인터페이스를 구현하는 방법
			* class MyRunner implements Runnable {
  public void run(){ }
}
		2. Thread 클래스를 상속받아서 구현하는 방법
			* class MyThread extends Thread {
  public void run() { }
}
		3. Runnable 익명 객체 (익명 클래스)를 이용하여 구현할 수도 있다
		4. 만일, 구현해야할 함수가 한 개라면 별도의 클래스를 만들지 않고 람다식으로 코드를 작성해도 된다
람다식은 별도의 클래스를 만들지 않고 아래와 같이 작성한다
			* Thread thread = new Thread( () -> {
   스레드가 실행할 코드
} );
		5. run ( )
			1. run ( ) 함수에 스레드가 실행할 코드를 작성한다

### 스레드 생성
* ex1) Thread t1 = new Thread(runnable 객체);
* ex2)  Thread t2 = new MyThread();
* 쓰레드를 구현할때는 Thread클래스를 상속받는거 보다 Runnable 인터페이스를 구현하는 것이 권장된다. 왜냐하면 Thread를 상속 받으면 다른 클래스를 상속 받을 수 없기 때문이다

### 스레드 실행
* ex) t1.start( );

### 자바에서는 스레드 스케줄링 기법으로 우선순위(Priority)방식과 순환 할당(Round-Robin)방식을 사용한다
* 우선순위가 높은 스레드를 먼저 수행 하되, 우선순위가 동일하다면 순환 할당 방식으로 스레드를 실행한다
* 순환 할당 방식은 시분할 방식이다, 각 스레드가 정해진 시간 만큼 수행되고 다시 대기 상태가 된다

### 스레드풀(or Bean Pool)
* 갑작스런 병렬 작업의 폭증으로 인한 스레드의 폭증을 막기 위해 사용한다
* 스레드를 제한된 갯수로 정해 놓고 작업 큐에 들어오는 작업들을 하나씩 스레드가 맡아 처리한다
* 작업 처리가 끝난 스레드는 다시 작업 큐에 돌아온다

### Thread 클래스의 메서드
1. yield ( )
	* 실행 중에 우선순위가 동일한 다른 스레드에게 실행을 양보하고 실행 대기 상태가 된다
	* 다른 스레드가 종료될 때까지 기다린다는 보장은 없다
2. join ( )
	* 다른 스레드의 종료를 기다린다
	* join( ) 을 호출한 스레드의 종료가 될 때까지 대기한다
	* ex) ThreadA에서 ThreadB.join ( ) 을 실행하면 ThreadA는 ThreadB가 종료 될 때까지 대기한다
3. wait ( )
	* 동기화 메소드 또는 블럭에서만 호출 가능한 Object의 메서드이다 (Thread의 메서드가 아니다)
	* wait ( ) 함수가 포함된 함수를 호출한 쓰레드를 일시정지 상태로 만든다
	* notify ( ), notifyAll ( ) 함수에 의해 실행 대기 상태로 갈 수 있다
4. stop ( )
	* 스레드를 즉시 종료시킨다 (run ( ) 메서드가 정상적으로 끝나지 않는다)
	* 위험한 종료 방법이다
5. interrupt ( )
	* 쓰레드를 종료시킨다
	* 안전하게 run ( ) 메서드를 정상적으로 종료한다

## Generic 제네릭	
* 자바5부터 새로 추가되었다
* Collection에서 널리 사용된다

### 제네릭이 제공해주는 이점
* Type safety
	1. 컴파일 시에 강한 타입 체크를 할 수 있다
	2. 객체를 리턴받을 때 형변환을 하지 않아도 된다

### 제네릭 타입
* 타입을 파라미터로 가지는 클래스와 인터페이스
* 선언 시 클래스 또는 인터페이스 이름 뒤에 “<>”를 붙인다
* “<>” 사이에는 타입 파라미터 위치
* 제네릭 타입은 두개 이상의 타입 파라미터 사용 가능하다
* ex) class<K, V, … >, interface<K, V, … >

### 제네릭 메서드
* 리턴 타입 앞에 “<>”기호를 추가하고 타입 파라미터를 기술한다

###  와일드카드 타입

### 제네릭 타입의 상속과 구현
* 제네릭 타입을 부모 클래스로 사용할 경우 타입 파라미터는 자식 클래스에도 기술해야한다
* 자식 클래스에는 추가적인 타입 파라미터를 가질 수 있다
* 인터페이스의 경우도 동일하다

## Collection framework	
### Collection
* 특징 : 순서가 없다,중복을 허용한다

#### Set
* 순서가 없고, 중복도 허용하지 않는다.
* 순서가 없어서 index를 사용하는 get, set을 지원하지 않는다
* Set 인터페이스를 구현한 클래스
	1. HashSet
	2. TreeSet
	3. Comparable한 TreeSet은 값을 넣을 때 자동으로 정렬한다

#### List
* 순서가 있고, 중복을 허용한다
* List 인터페이스를 구현한 클래스
	1. ArrayList
	2. LinkedList
	3. Vector - Thread safe
	4. synchronized 되어 있다는 것. 그래서 싱글 스레드에서는 성능이 떨어지니까 사용 안한다

### Map
* Key와 Value의 쌍으로 구성된다
* Key는 unique 해야한다. = 중복이 되면 안된다
* Map 인터페이스를 구현한 클래스
	1. HashMap
	2. Hashtable
	3. TreeMap
	4. Properties

### 데이터 정렬

#### Comparable
* CompareTo ( ) 스스로 다른 객체와 비교가 가능
* 디폴트 비교 규칙을 정할 때 사용한다

#### Comparator
* Compare ( ) 두 객체를 비교
	1. 부가적인 비교 규칙을 정할 때 사용한다

* CompareTo ( ) 이외의 다른 비교 규칙을 만들고 싶을때, Comparator 인터페이스를 구현한 별도의 비교기 클래스를 만들어서 정렬할 수 있다
	1. ex) Set<NameCard> cardList2 = new TreeSet<> (new NameCardComparator ( ));
	2. NameCardComparator라는 비교기 클래스를 별도로 만들어서 저렇게 인자로 넣어준다