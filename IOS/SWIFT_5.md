# SWIFT_5
* 스위프트의 연산자는 특정한 문자로 표현한 함수라 할 수 있다, 스위프트에서는 띄어쓰기도 중요한 문법 중 하나이다
* A === B -> 참조가 같다, A와 B가 참조 (레퍼런스) 타입일 때 A와 B가 같은 인스턴스를 가리키는지 비교하여 불리언 값을 반환한다
* A ~= B -> 패턴매치, A와 B의 패턴이 매치되는지 확인하여 불리언 값을 반환한다
* Question ? A : B -> 삼항 조건 연산자, Question (불리언 값)이 참이면 A, 거짓이면 B를 반환
* A…B -> A부터 B까지의 수를 묶어 범위를 표현 (A와 B 포함)
* A..<B -> A부터 B미만까지의 수를 묶어 범위를 표현 (A포함, B 불포함)
* A… -> A 이상의 수를 묶어 범위를 표현 (A 포함)
* …A -> A 이하의 수를 묶어 범위를 표현 (A 포함)
* .. < A -> A 미만의 수를 묶어 범위를 표현 (A 불포함)

#### 비트 연산자
*  ~A -> A의 비트를 반전한 결과를 반환
* A & B -> A와 B의 비트 AND 논리 연산을 실행
* A | B -> A와 B의 비트 OR 논리 연산을 실행
* A ^ B -> A와 B의 비트 XOR 논리 연산을 실행
* A >> B -> A의 비트를 B 만큼 비트를 시프트 (이동) 

* 스위프트에서는 오버플로 연산자를 사용하면 오버플로를 자동으로 처리한다
* &+ -> 오버플로에 대비한 덧셈 연산
* &- -> 오버플로에 대비한 뺄셈 연산
* &* -> 오버플로에 대비한 곱셈 연산

* A ?? B -> A가 nill이 아니면 A를 반환, A가 nill 이면 B를 반환
* -A -> A의 부호를 변경
* O! -> O (옵셔널 개체)의 값을 강제로 추출
* V? -> V (옵셔널 개체)를 안전하게 추출, V (데이터 값) 가 옵셔널임을 표현
* nill 병합 연산자는 옵셔널을 사용할 때 유용한 연산자