## Network Programming
* process 는 자신만의 주소 공간을 가지고 있다
* 프로세스의 메모리 공간은 연속적이어야 한다
* Socket Programming
* Process = 프로그램(실행 가능한 파일)의 인스턴스, 실행중인 프로그램
* ipc = inter process communication

Windows
Linux           => Protected mode => 가상 메모리 (페이징)
MacOS

* SSD => read, write 의 횟수가 제한되어 있다
* 하드디스크는 수명이 길다
* 포인터의 크기 32 => 4 bit , 64 => 8 bit
* TLB => 가삼 메모리 주소를 물리적인 주소로 반환하는 속도를 높이기 위해 사용하는 캐시

* Real mode => MS DOS
* 단편화 -> 메모리가 남아도 연속적인 사용이 불가해서 생기는 못하는 문제
* 가상 메모리 -> 단편화의 문제점을 해결하기 위해 나왔다
* 가상 메모리 = 세그먼트, 페이징
* 프로세스가 사용하는 메모리는 반드시 물리적으로 연속적 이어야 한다
* 모든 프로세스는 자신만의 페이지 테이블을 가지고 있다 -> 모든 프로세스는 자신만의 가상 주소를 가지고 있다
* 스와핑 => 물리 메모리를 다 사용하였을 때, 하드디스크로 내려주는 방법

* 서로 다른 프로세스가 데이터를 교환하기 위해서는 IPC가 필요하다
* System V IPC -> Message Queue, Semaphore (동기화, 제한을 둘 때)
* Signal (명령, 동기화)
* Shared Memory (같은 메모리를 다른 여러개의 가상 메모리가 함께 사용)
* 가상 메모리를 사용하면 물리적으로 연속적이지 않아도 된다
* Inter Process Communication = IPC
* IPC 관점으로 Network Programming 과 Socket Programming을 해석해야 한다
* Process - 우선순위 (nice)

* 통신 (프로토콜)
* TCP/IP (Internet Protocol)  -> 다른 컴퓨터의 프로세스와 통신 할 수 있다
* File I/O

* VFS - Virtual File System
* open / read / write / close
* 자바 -> 비메모리 자원에 대해서는 반드시 명시적인 종료 메소드를 호출해야 한다
* 예외 처리에 대한 부분을 완벽하게 작성할 수 없다 -> 예외 처리의 단점

* 주소
* 컴퓨터의 주소 - IP Address
* 프로세스의 주소 - Port Address

* TCP 통신 => Connection 수립
* Client             Server
connect ->       IP / PORT 
* UDP

* www.naver.com -> Domain Name
* DNS (Domain Name Server) -> IP 주소로 변환
* 서비스의 종류에 따라서 약속된 PORT 번호가 있다 -> Well-known Port Address
* KT : 168.126.63.1, 168.126.63.2
* google : 8.8.8.8, 8.8.4.4
* load valance 
* HTTP Server : 80
* HTTPS Server : 443
* SSH Server : 22
* FTP Server : 21
* Redis Server : 6379

### 엔디안 : CPU가 메모리에 데이터를 저장하고 불러오는 방식
* 리틀 엔디안 => 우리가 쓰는 것
* 빅 엔디안 =>  자바, 세상이 정한 것

### Server 과정
* Socket
* Server Socket : 연결을 수립하기 위한 Socket
* Socket : 데이터를 교환하기 위한 Socket
* read , write
* listen socket => 연결을 수립하기 위한 소켓 (Server socket)
* socket : 데이터를 주고받기 위한 소켓

1. socket
2. bind 
3. listen 
4. accept

### Client
1. socket
2. connect