# Python
* Computation 
* Declarative 
* Imperative
* type checking 
* statement : legal commands that python can interpret (print, assignment)
* branching programs - something that can change order or instruction base on some test, test is usually value of variable 
* flow chart
* float = floating point 
* 1 <= mantissa < 2
* mantissa exponent  -> -1022 : 1023
* 일등 시민 함수, 모든 것이 객체다
* 함수는 불변
* 파이썬에는 getter나 setter 메서드가 필요 없다

![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-12%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.59.12.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-12%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.44.57.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-13%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%201.56.05.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-13%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%203.52.25.png)

* 튜플의 각 요소는 리스트이다

![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-13%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%204.06.33.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-21%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%203.36.21.png)


![](Python/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202020-02-21%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%203.32.00.png)

# zip()
* zip() 함수를 사용해서 여러 시퀀스를 병렬로 순회할 수 있다
* 순회 가능한 객체를 반환한다

# range()
* range() 함수는 리스트나 튜플 같은 자료구조를 생성하여 저장하지 않더라도 특정 범위 내에 숫자 스트림을 반환한다
* 순회 가능한 객체를 반환한다

# Comprehension (함축)
* 리스트 컴프리헨션은 대괄호 [] 안에 루프가 있다
* 딕셔너리 컴프리헨션 {키_표현식 : 값_표현식 for 표현식 in 순회 가능한 객체}
* 셋 컴프리헨션 {표현식 for 표현식 in 훈회 가능한 객체}
* 컴프리핸션은 하나 이상의 이터레이터로부터 파이썬의 자료구조를 만드는 콤팩트한 방법이다

* 제너레이터는 한 번만 실행될 수 있다, 리스트, 셋, 문자열 딕셔너리는 메모리에 존재하지만, 제너레이터는 즉석에서 값을 생성하고, 이터레이터를 통해서 한 번에 값을 하나씩 처리한다, 제너레이터는 이 값을 기억하지 않으므로 다시 시작하거나 백업할 수 없다

# 위치 인자
* 인자의 가장 익숙한 타입은 값을 순서대로 상응하는 매개변수에 복사하는 위치인자이다

# 키워드 인자
* 위치 인자의 혼동을 피하기 위해 매개변수에 상응하는 이름을 인자에 지정할 수 있다
* 위치 인자와 키워드 인자로 함수를 호출한다면 위치 인자가 먼저 와야 한다

# 위치 인자 모으기 *
* * 를 사용할 때 가변 인자의 이름으로 args 를 사용할 필요가 없지만 관용적으로 사용한다

# 키워드 인자 모으기 **
* 키워드 인자를 딕셔너리로 묶기 위해 두 개의 에스터리스크를 사용할 수 있다

# 클로져
* 클로져는 다른 함수에 의해 동적으로 생성된다, 바깥 함수로부터 생성된 변수값을 변경하고, 저장할 수 있는 “함수”다

# 익명 함수 lambda()
* 파이썬의 람다 함수는 단일문으로 표현되는 익명 함수다
* 콜백 함수를 정의할 때 사용하면 유용하다

# 제너레이터
* 제너레티어는 파이썬의 시퀀스를 생성하는 객체이다
* 전체 시퀀스를 한 번에 메모리에 생성하고 정렬할 필요 없이 잠재적으로 아주 큰 시퀀스를 순회할 수 있다
* 일반 함수는 이전 호출에 대한 메모리가 없고, 항상 똑같은 상태로 첫 번째 라인부터 수행하지만 제너레이터는 다르다
* 잠재적으로 큰 시퀀스를 생성하고, 제너레이터 컴프리핸션에 대한 코드가 아주 긴 경우에는 제너레이터 함수를 사용하면 된다
* 일반 함수지만 return 문으로 반환하지 않고, yield 문으로 값을 반환한다

# 데코레이터
* 하나의 함수를 취해서 또 다른 함수를 반환하는 함수

# 네임스페이스와 스코프
* 이름은 사용되는 위치에 따라 다른 것을 참조할 수 있다
* 파이썬 프로그램에는 다양한 네임스페이스가 있다
* 네임스페이스는 특정 이름이 유일하고, 다른 네임스페이스에서의 같은 이름과 관계가 없다

# 다른 이름으로 모듈 임포트하기
* 앨리어스 (as)

# 누락된 키 처리하기 : setdefault(), defaultdict()
* 존재하지 않는 키로 딕셔너리에 접근하려 하면 예외가 발생한다
* setdefault() 함수는 기본값을 반환하면서도 키가 누락된 경우도 딕셔너리에 항목을 할당할 수 있다

* | 을 사용하면 중복된 항목을 얻을 수 있다
* OrderDict() 함수를 이용하면 키의 추가 순서를 기억하고, 이터레이터로부터 순서대로 키값을 반환한다
* pprint () 함수는 가독성이 좋게 정렬하여 출력한다

# 스택 + 큐 == 데크 (deque)
* 데크는 스택과 큐의 기능을 모두 가진 출입구가 양 끝에 있는 큐다
* 데크는 시퀀스의 양 끝으로부터 항목을 추가하거나 삭제할 때 유용하다

# 객체 초기화 메서드 __init__
* 이 메서드는 클래스의 정의로부터 객체를 초기화한다
* self 인자는 객체 자신을 가리킨다
* 클래스에서 __init__() 을 정의할 때, 첫 번째 매개변수는 self 이어야 한다
* 모든 클래스 정의에서 __init__메서드를 가질 필요는 없다, 같은 클래스에서 생성된 다른 객체를 구분하기 위해 필요한 다른 뭔가를 수행한다

# private 네임 맹글링
* 파이썬은 외부 코드에서 발견할 수 없도록 이름을 맹글링 할 수 있다 ( __ )

# 메서드 타입
* 어떤 데이터와 함수는 클래스 자신의 일부이고, 어떤 것은 클래스로부터 생성된 객체의 일부이다
* 클래스 정의에서 메서드의 첫 번째 인자가 self 라면 이 메서드는 인스턴스 메서드이다
* 클래스 메서드는 클래스 전체에 영향을 미친다, 클래스에 대한 어떤 변화는 모든 객체에 영향을 미친다

# 덕 타이핑
* 파이썬은 다형성을 느슨하게 구현했다

# 클래스와 객체, 모듈
* 코드에서 클래스와 모듈의 사용 기준 
* 비슷한 행동 (메서드) 을 하지만 내부 상태 (속성)가 다른 개별 인스턴스가 필요할 때, 객체는 유용하다
* 클래스는 상속을 지원하지만, 모듈은 상속을 지원하지 않는다
* 한 가지 일만 수행한다면 모듈이 좋을 수 있다
* 여러 함수에 인자로 전달될 수 있는 여러 값을 포함한 여러 변수가 있다면, 클래스를 정의하는 것이 더 좋다


# Advantages of OOP
* bundle data into packages together with procedures that work on them through work on them through well defined interfaces
* divide and conquer development 
* implement and test behavior of each class separately 
* increased modularity reduces complexity
* classes make it easy to reuse code
* many python modules define new classes
* each class has a separate environment 
* inheritance allows subclasses to redefine or extend a selected subset of a superclass behavior

# The power of OOP
* bundle together objects that share
* common attributes and procedures that operate on those attributes
* use abstraction to make a distinction between how to implement an object vs how to use the object
* build layers of object abstractions that inherit behaviors from other classes of objects
* create our own classes of objects on top of python’s basic classes

# Class of objects
* class name is the type
* class defines data and methods common across all instances

# Instance of a Class
* instance is one specific object
* instance has the structure of the class

# OOP and classes of objects
* group different objects part of the same type

# Getter and Setter Methods
* getters and setters should be used outside of class to access data attributes

# An instance and dot notation
* instantiation creates an instance of an object
* dot notation used to access attributes though it is better to use getters and setters to access data arrtibutes

# Information hiding
* If you are accessing data attributes outside the class and class definition change may get errors

# Python is not good at information hiding
* allows you to access data from outside class definition
* allows you to write to data from outside class definition
* allows you to create data attributes for an instance from outside class definition

# Subclass, Superclass
* subclass can have methods with same name as superclass
* for an instance of a class, look for a method name in current class definition

# Object Oriented Programming
* create your own collections of data
* organize information
* division of work
* access information in a consistent manner
* add layers of complexity
* like functions, classes are a mechanism for decomposition and abstraction in programming

# How to evaluate efficiency of programs
* measure with a timer
* count the operations
* abstract notion of order of growth

# Log-linear complexity
* many practical algorithms are log-linear
* very commonly used log-linear algorithm is merge sort

# Polynomial complexity
* most common polynomial algorithms are quadratic
* commonly occurs when we have nested loops or recursive function calls

# Exponential complexity
* recursive functions where more than one recursive call for each size of problem
* many important problems are inherently exponential
*  unfortunate, as cost can be high
* will lead us to consider approximate solutions as may provide reasonable answer more quickly

# Searching Algorithm
### linger search
* brute force (무식한 방법) search
* list does not have to be sorted
* very simple and easy to program
* list is large, it may take a while to go through the list
* using linear search, search for an element is O(n)

### bisection search
* list must be sorted to give correct answer
* saw two different implementations of the algorithm
* using binary search, can search for an element in O(log n)

# Sort Algorithm
* want to efficiently sort a list of entries (typically numbers)
* will see a range of methods, including one that is quite efficient

## Bubble Sort
* compare consecutive pairs of elements
* swap elements in pain such that smaller is first
* when reach end of list, start over again
* stop when no more swaps have been made
* largest unsorted element always at end after pass, so at most n passes

## Selection Sort
1. first step
	* extract minimum element
	* swap it with element at index 0
2. subsequent step
	* in remaining sublist, extract minimum element
	* swap it with the element at index 1
3. keep the left portion of the list sorted
	* at i’th step, first i elements in list are sorted
	* all other elements are bigger than first i elements

# Analyzing Selection Sort
* loop invariant 
	1. base case: prefix empty, suffix whole list - invariant true
	2. induction step : move minimum element from suffix to end of prefix. Since invariant true before move, prefix sorted after append
	3. when exit, prefix is entire list, suffix empty, so sorted

# Merge Sort
* use a divide - and - conquer approach
	1. if list of length 0 or 1, already sorted
	2. if list has more than one element, split into two lists, and sort each
	3. merge sorted sublists
		* look at first element of each, move smaller to end of the result
		* when one list empty, just copy rest of other list
	

