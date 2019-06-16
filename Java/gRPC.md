# gRPC
* HTTP 기반 원격 함수 호출을 해주는 RPC (Remote Procedure Call) 프레임워크이다
* RPC는 네트워크 상 원격에 있는 서버의 서비스를 호출하는데 사용되는 프로토콜로 IDL (Interface Definition Language)로 인터페이스를 정의한 후 이에 해당하는 Skeleton 과 Stub 코드를 통해 프로그래밍 언어에서 호출해서 사용하는 방식이다
* gRPC는 자바,C/C++ 뿐만 아니라 Node.js, Python, Ruby, PHP, Go, Android 기반, Objective-C 등 다양한 언어들을 지원함으로 서버간 뿐만이 아니라 클라이언트 어플리케이션이나 모바일 앱에서도 사용가능한 RPC 프레임워크이다
* gRPC는 함수 호출간 직렬화된 데이터를 주고 받는데 구조화된 객체를 직렬화하기 위해서 Protocol Buffers 를 사용하고 있다