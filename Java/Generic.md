# Generic
* 데이터 타입을 미리 정의하지 않고, 클래스를 인스턴스화 하는 시점에 데이터 타입을 지정해주는 방식
* 강제적인 타입 변환이 발생하지 않는다, 즉 인스턴스화시 타입을 지정하고 내부적으로는 자동 재구성된다
* 제네릭이 없다면 필요한 데이터 타입에 맞는 새로운 클래스 또는 메서드를 작성해야 한다
* 제네릭을 사용하면 반복적인 코드를 사용하지 않을 수 있다, 또한 코드 재사용성이 증가한다
* 제네릭을 사용하면 잠재성이 있는 에러를 런타임 사전에 에러를 체크할 수 있다
* 제네릭은 컴파일시 타입 오류를 체크하여 사전에 엄격한 타입 체크를 가능하게 한다
* 제네릭 타입으로는 참조형 데이터 타입만 설정이 가능하다
* 제네릭 타입을 이용해서 컴파일 과정에서 타입 체크를 할 수 있다

### 제네릭의 장점
	1. 프로그램 성능 저하를 유발하는 캐스팅 (강제 데이터 타입 변환)을 제거한다
	2. 코드절약 및 코드 재사용성을 증진시켜 유지보수를 편하게 한다
	3. 컴파일시 타입 오류를 체크하여, 사전에 엄격한 데이터 타입 체크를 가능하게 한다

### 멀티 타입 파라미터
* 제네릭 타입을 2개 이상 동시에 만들 수 있다

### 보편적인 사용법
* E: 요소 (Element)
* K: 키 (Key)
* N: 숫자 (Number)
* T: 타입 (Type)
* V: 값 (Value)
* S, U, V: 두번째, 세번째, 네번째에 선언된 타입