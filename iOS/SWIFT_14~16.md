# SWIFT_14~16
## 옵셔널 체이닝 (Optional Chaining)
* 옵셔널 체이닝은 nil일 수도 있는 프로퍼티나, 매소드 그리고 서브스크립트에 질의(query,문의,질문)를 하는 과정을 말한다
* 만약 옵셔널이 프로퍼티나 매소드 혹은 서브스크립트에 대한 값을 갖고 있다면 그 값을 반환하고 만약 값이 nil이면 nil을 반환 한다
* 여러 질의를 연결해서 할 수도 있는데, 연결된 질의에서 어느 하나라도 nil이면 전체 결과는 nil이 된다
* 옵셔널 체이닝은 프로퍼티나 메서드 또는 서브스크립트를 호출하고 싶은 옵셔널 변수나 상수 뒤에 ?를 불여 표현한다
* 옵셔널 체이닝을 통해 값을 받아오기만 하는 것이 아니라 반대로 값을 할당해줄 수도 있다
* 옵셔널 체이닝을 통해 메서드와 서브스크립트 호출도 가능하다
* 서브스크립트 = 인덱스를 통해 값을 넣고 빼올 수 있는 기능이다
* 옵셔널의 서브스크립트를 사용하고자 할 때는 [ ] 보다 앞에 ?를 표기해주어야 한다

## 빠른종료
* 빠른종료의 핵심 키워드는 guard 이다
* guard 구문은 if 구문과 유사하게 Bool 타입의 값으로 동작하는 기능이다
* guard 뒤에 따라붙는 코드의 실행 결과가 true일 때 코드가 계속 실행된다
* if 구문과는 다르게 guard 구문은 항상 else 구문이 뒤에 따라와야 한다
* guard 뒤에 따라오는 Bool 값이 false 라면 else의 블록 내부 코드를 실행하게 되는데, 이때 else 구문의 블록 내부에는 꼭 자신보다 상위의 코드 블록을 종료하는 코드가 들어가게 된다
* 예외사항만을 처리하고 싶다면 if 구문보다 guard 구문을 사용하는 것이 훨씬 간편하다
* guard 구문의 한계는 자신을 감싸는 코드 블록, 즉 return, break, continue, throw 등의 제어문 전환 명령어를 쓸 수 없는 상황이라면 사용이 불가하다

## 맵, 필터, 리듀스
* 매개변수로 함수를 갖는 함수를 고차함수라도 부르는데, 스위프트에서 대표적인 고차함수로는 맵, 필터, 리듀스가 있다

### 맵
* 맵은 자신을 호출할 때 매개변수로 전달된 함수를 실행하여 그 결과를 다시 반환해주는 함수 이다
* 스위프트의 Sequence, Collection 프로토콜을 따르는 타입과 옵셔널은 모두 맵을 사용할 수 있다
* 맵을 사용하면 컨테이너가 담고 있던 각각의 값을 매개변수를 통해 받은 함수에 적용한 후 다시 컨테이너에 포장하여 반환한다
* 기존 컨테이너의 값은 변경되지 않고 새로운 컨테이너가 생성되어 반환된다, 따라서 맵은 기존 데이터를 변형하는 데 많이 사용한다
* map 메서드의 사용법은 for-in 구문과 별반 차이가 없다, 다만 코드의 재사용 측면이나 컴파일러 최적화 측면에서 본다면 성능 차이가 있다, 또한 다중 스레드 환경일 때 대상 컨테이너의 값이 스레드에서 변경되는 시점에 다른 스레드에서도 동시에 값이 변경되려고 할 때 예측치 못한 결과가 발생하는 부작용을 방지할 수도 있다

### 필터
* 필터는 컨테이너 내부의 값을 걸러서 추출하는 역할을 하는 고차함수이다
* 맵과 마찬가지로 새로운 컨테이너에 값을 담아 반환해준다
* filter 함수의 매개변수로 전달되는 함수의 반환 타입은 Bool 이다

### 리듀스
* 리듀스 기능은 결합이라고 불려야 마땅한 기능이다
* 리듀스는 컨테이너 내부의 콘텐츠를 하나로 합하는 기능을 실행하는 고차함수이다
* 배열이라면 배열의 모든 값을 전달인자로 전달받은 클로저의 연산 결과로 합해준다
* 스위프트의 리듀스는 두 가지 형태로 구현되어 있다
	* 1. 클로저가 각 요소를 전달받아 연산한 후 값을 다음 클로저 실행을 위해 반환하며 컨테이너를 순환하는 형태이다
	* 2. 컨테이너를 순환하며 클로저가 실행되지만 클로저가 따로 결과값을 반환하지 않는 형태이다, 대신 inout 매개변수를 사용하여 초기값을 직접 연산을 실행하게 된다

## 모나드
* 모나드는 특정한 상태로 값을 포장하는 것에서 출발한다, 스위프트에서는 이를 옵셔널이라는 형태로 구현했는데 값이 있을지 없을지 모르는 상태 속에 포장하는 것이다

### 컨텍스트
* 옵셔널은 열거형으로 구현되어 있어서 열거형 case의 연관 값을 통해 인스턴스 안에 연관 값을 갖는 형태이다
* 컨텍스트가 일종의 컨테이너 역할을 한다

### 함수객체
* 함수객체란 맵을 적용할 수 있는 컨테이너 타입이다

### 모나드
* 값이 있을 수도 있고 없을 수도 있는 컨텍스트를 갖는 함수객체 타입이다
* 컨텍스트에 포장된 값을 처리하여 포장된 값을 컨텍스트에 다시 반환하는 함수를 적용할 수 있다
* 플랫맵 = 포장된 값을 받아서 값이 있으면 포장을 풀어서 값을 처리한 후 포장된 값을 반환하고, 값이 없으면 없는 대로 다시 포장하여 반환한다
* 플랫맵도 함수를 매개변수로 받고, 옵셔널은 모나드이므로 플랫맵을 사용할 수 있다
* 플랫맵과 맵과의 차이점은 내부의 값을 알아서 더 추출해준다는 것이다
* 플랫맵은 내부의 값을 1차원적으로 펼처놓는 작업도 하기 때문에, 값을 꺼내어 모두 동일한 위상으로 펼쳐놓는 모양새를 갖출 수 있다
* 플랫맵은 추출 작업을 통해 옵셔널에서 꺼내온 값을 다시 옵셔널에 넣어주기 때문에 연쇄 연산도 가능하다