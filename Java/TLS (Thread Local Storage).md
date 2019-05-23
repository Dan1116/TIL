# TLS (Thread Local Storage)
* 스레드 별로 고유한 저장 공간을 가질 수 있는 방법이다
* 스레드 별로 다른 값을 갖는 전역 변수이다
* 저장 공간은 index 로 구성된 배열이다

## 컴파일러의 도움을 받자 (정적)
* 사용 방법은 매우 간편하지만 컴파일할때 TLS 크기가 결정되기 때문에 정적으로만 사용이 가능하다
* 런타임에 쓰레드에게 더 큰 메모리 할당이 필요해도 확장하는 것이 불가능하다
* 운영체제가 사용하는 메모리와는 달리 별도의 메모리 영역을 사용하기 때문에 컴파일러의 TLS 변수를 참조하는 코드는 번역단계에서 추가적인 명령들이 필요하다, 따라서 속도가 느려진다는 단점이 존재한다

## API를 사용하자 (동적)
* 내부적으로 예약된 TLS 공간을 사용하는 방법이다
* 사용할 수 있는 Index 를 받아서 BYTE 단위로 원하는 데이터를 save/load 할 수 있다
* 기존 메모리 구조를 그대로 사용해서 별도의 추가 명령어가 필요하지 않다
* 효율을 원한다면 API의 TLS 를 사용하는 것이 좋다

