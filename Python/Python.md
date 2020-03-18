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
* 파이썬의 함수는 일등 시민 함수, 모든 것이 객체다
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
* 셋 컴프리헨션 {표현식 for 표현식 in 순회 가능한 객체}
* 컴프리핸션은 하나 이상의 이터레이터로부터 파이썬의 자료구조를 만드는 콤팩트한 방법이다
* 텍스트 파일을 가장 읽기 쉬운 방법은 이터레이터를 사용하는 것이다
* 이터레이터는 한 번에 한 라인씩 반환한다
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
* 파이썬은 다형성을 느슨하게 구현해 놨다

# 클래스와 객체, 모듈
* 코드에서 클래스와 모듈의 사용 기준 
* 비슷한 행동 (메서드) 을 하지만 내부 상태 (속성) 가 다른 개별 인스턴스가 필요할 때, 객체는 유용하다
* 클래스는 상속을 지원하지만, 모듈은 상속을 지원하지 않는다
* 한 가지 일만 수행한다면 모듈이 좋을 수 있다
* 여러 함수에 인자로 전달될 수 있는 여러 값을 포함한 여러 변수가 있다면, 클래스를 정의하는 것이 더 좋다

# 내장된 데이터 타입
## 문자열
* 텍스트 데이터에 사용되는 유티코드 문자의 시퀀스

## 바이트와 바이트 배열
* 이진 데이터에 사용되는 8비트 정수의 시퀀스

# 유니코드
* 컴퓨터의 기본 저장 단위는 바이트, 8비트에 256개의 고유한 값을 저장할 수 있다
* 아스키코드는 7비트 (128개의 고유한 값)만 사용한다
* 아스키코드 : 26개의 대 소문자, 10개의 숫자, 구두 문자, 공백 문자, 비인쇄 제어 코드로 구성되어있다
* 유니코드는 전 세계 언어의 문자를 정의하기 위한 국제 표준 코드다
* lookup() : 대 소문자를 구분하지 않는 인자를 취하고, 유니코드 문자를 반환한다
* name() : 인자로 유니코드 문자를 취하고, 대문자 이름을 반환한다 
* 1 바이트 : 아스키코드
* 2 바이트 : 키릴 문자를 제외한 대부분의 파생된 라틴어
* 3 바이트 : 기본 다국어 평면의 나머지
* 4 바이트 : 아시아 언어 및 기호를 포함한 나머지
* 문자 ^와 $는 앵커 (anchor) 라고 부른다
* ^는 검색 문자열의 시작 위치에, $는 검색 문자열의 마지막 위치에 고정한다
* .$는 가장 마지막에 있는 한 문자와 .을 매칭한다
* 정규 표현식의 패턴을 입력하기 전에 항상 문자 r을 (raw string) 을 입력하라, 그러면 파이썬의 이스케이프 문자를 사용할 수 없게 되므로 실수로 이스케이프 문자를 사용하여 충돌이 일어나는 것을 방지할 수 있다

# 바이트와 바이트 배열
* 바이트는 튜플처럼 불변이다
* 바이트 배열은 리스트처럼 변경 가능하다
* >는 정수가 빅엔디안 형식으로 저장되었다는 걸 뜻한다
* <는 정수가 리틀엔디안 형식으로 저장되었다는 걸 뜻한다
* 각각의 L은 4바이트의 부호 없는 긴 정수를 지정한다

# 콘텍스트 매니저
* 파이썬에서 파일을 여는 것과 같은 일을 수행한다
* with 표현식 as 변수 형식

# 설정 파일
* 동적인 것은 프로그램으 인자를 통해 제공하면 되지만, 정적인 것(또는 오래 지속되는 것)은 어딘가에 유지되어야 한다
* 대부분의 직접 만든 설정 파일은 지저분하고, 그렇게 빠르지 않다, writer 프로그램과 reader 프로그램 모두 관리해야한다

# 직렬화하기 : pickle
* 자료구조를 파일로 저장하는 것을 직렬화라고 한다
* JSON 과 같은 형식은 파이썬 프로그램에서 모든 데이터 타입을 직렬화하는 컨버터가 필요하다
* 파이썬은 바이너리 형식으로 된 객체를 저장하고 복원할 수 있는 pickle 모듈을 제공한다

# 관계형 데이터베이스
* 다수의 동시 사용자가 데이터에 접근
* 사용자에 의한 데이터 손상으로부터의 보호
* 데이터를 저장하고 검색하는 효율적인 방법
* 스키마에 정의된 데이터와 제약조건에 한정되는 데이터
* 다양한 데이터 타입과의 관계를 계산하는 조인
* 서술적인 질의 언어 : SQL (Structured Query Language)
* 다양한 종류의 데이터 간의 관계를 테이블 형태로 표시하기 때문에 관계형이라고 부른다
* 테이블은 스트레드시트와 비슷한 행과 열로 이루어진 격자 (grid)다
* 테이블을 생성하기 위해서는 테이블의 이름을 짓고, 테이블에 대한 열의 순서와 이름, 타입을 지정해야 한다
* 비록 열이 누락된 데이터를 허용할 수 있도록 정의할 수는 있지만, 각 행은 같은 열을 가진다
* 일반적으로 하나의 열 또는 열의 그룹은 테이블의 기본키이다
* 기본 키 값은 테이블에서 반드시 유일해야지만 동일한 데이터를 추가하는 것을 방지할 수 있다
* 이 키는 질의를 빠르게 찾을 수 있도록 인덱싱 되어 있다
* 인덱스는 특정 행을 빨리 찾을 수 있도록 만들어주는 책의 색인처럼 작동한다
* 파일이 디렉터리 안에 있는 것 처럼, 각 테이블은 상위 데이터베이스 내에 존재한다
* 키가 아닌 열값으로 행을 찾으려면, 그 열에 부차적인 인덱스를 정의한다, 그렇지 않으면 테이블 스캔을 하게 된다 (열값과 일치하는 모든 행을 무차별 검색한다)

# SQL
* API나 프로토콜이 아니다, 어떤 결과를 얻기 위해 수행 과정을 나열하는 것이 아닌, 원하는 결과를 질의하는 서술형 언어이다
* SQL 질의 (query)는 클라이언트에서 데이터베이스 서버로 전송하는 텍스트 문자열이다

# DB-API
* API 는 어떤 서비스에 대한 접근을 얻기 위해 호출하는 함수들이 집합이다
* DB- API 는 관계형 데이터베이스에 접근하기 위한 파이썬의 표준 API이다
* 관계형 데이터베이스 각각에 대해 별도의 프로그램을 작성하지 않고, 여러 종류의 데이터베이스를 동작하기 위한 하나의 프로그램만 작성하면 된다

# 캐시와 만료
* 모든 Redis의 키는 TTL (Time To Live) , 만료일을 가진다

# 웹
* HTTP : 요청과 응답을 교환하기 위한 웹 서버와 클라이언트의 명세 (무상태)
* HTML : 결과에 대한 표현 형식
* URL : 고유의 해당 서버와 자원을 나타내는 방법
* HTTP 로 URL을 요청하고 서버로부터 HTML을 받는다
* 캐싱 : 변하지 않는 원격 콘텐츠는 웹 클라이언트에 저장하고, 다시 서버로부터 이 콘텐츠의 다운로드를 피하기 위해 저장된 콘텐츠를 사용한다
* 세션 : 쇼핑 웹사이트는 쇼핑 카트의 콘텐츠를 기억해야 한다
* 무상태에 대한 해결책 중 쿠키가 있다, 서버가 클라이언트를 식별할 수 있도록 보내는 특정 정보를 쿠키라고 한다

# 시스템
* open() : 생성하기
* exists() : 존재여부 확인하기
* isfile() : 타입 확인하기
* copy() : 복사하기
* rename() : 이름 바꾸기
* link(), symlink() : 연결하기, 심벌릭 링크는 원본 파일을 새 이름으로 연결한다
* chmod() : 퍼미션 바꾸기 
* chown() : 오너십 바꾸기
* abspath() : 절대 경로 얻기
* realpath() : 심벌릭 링크 경로 얻기
* remove() : 삭제하기

# 디렉터리
* 대부분의 운영체제에서 파일은 디렉터리의 계층구조 안에 존재한다
* mkdir() : 디렉터리 생성하기
* rmdir() : 디렉터리 삭제하기
* listdir() : 콘텐츠 나열하기
* chdir() : 현재 디렉터리 바꾸기
* glob() : 일치하는 파일 나열하기

# 프로그램과 프로세스
* subprocess : 프로세스 생성하기
* multiprocessing : 프로세스 생성하기, 이 모듈을 사용하면 파이썬 함수를 별도의 프로세스로 실행하거나 한 프로그램에서 독립적인 여러 프로세스를 실행 할 수 있다
* terminate() : 프로세스 죽이기

# 큐
* 큐는 리스트와 같다, 일을 한 쪽 끝에서 추가하고, 다른 쪽 끝에서 가져간다
* 먼저 들어온 순서대로 가져간다, 일반적으로 큐는 FIFO 라고 부른다
* 일반적으로 큐는 메시지를 전달한다

# 스레드
* 스레드는 한 프로세스 내에서 실행된다
* 프로세스의 모든 자원에 접근할 수 있다
* 스레드는 사용하기 어려우므로 항상 반드시 스레드 세이프한 코드를 작성해야 한다
* 스레드는 전역 데이터가 관여하지 않을 때 유용하고 안전하다
* 일부 I/O 작업을 완료할 때까지 기다리는 시간을 절약하는 데 유용하게 쓰인다
* 여러 개의 스레드를 사용하는 일반적인 이유는 일부 데이터 작업을 나누기 위해서이다
* 데이터를 안전하게 공유하는 일반적인 방법은 스레드에서 변수를 수정하기 전에 소프트웨어 락을 적용하는 것이다

# 이벤트 기반 프로그래밍
* 이벤트 기반 프로그램은 중앙 이벤트 루프를 실행하고, 모든 작업을 조금씩 실행하면서 루프를 반복한다
* gevent 라이브러리는 이벤트 기반이며, 멋진 묘책을 수행한다
* 보통 명령 코드를 작성하고, 이 조각들을 코루틴으로 신비롭게 변환한다
* 코루틴은 다른 함수와 서로 통신하여, 어느 위치에 있는지 파악하고 있는 제너레이터와 같다
* gevent 는 블로킹 대신 이러한 메커니즘을 사용하기 위해 파이썬의 socket 과 같이 많은 표준 객체를 수정한다
* gevent 를 사용하면 잠재적 위험이 있다, 모든 이벤트 기반의 시스템에서, 실행하는 각 코드 단위는 상대적으로 빠르게 처리되어야 한다, 논 블로킹임에도 불구하고 많은 일을 처리 해야하는 코드는 여전히 느리다

# 네트워크
* 가장 일반적인 패턴은 요청 - 응답 패턴으로, 클라이언트 - 서버 패턴으로 알려져있다 (동기적)
* 푸시 : 팬아웃, 데이터를 프로세스 풀에 있는 사용 가능한 워커로 전송
* 풀 : 팬인, 하나 이상의 소스로부터 데이터를 받는다 (하나의 로그 파일에 작성하는 로거)

# 발행 - 구독 모델
* 발행 - 구독은 큐가 아닌 브로드캐스트이다, 하나 이상의 포르세스가 메시지를 발행한다
* 각 구독자 프로세스는 수신하고자 하는 메시지의 타입을 표시한다, 각 메시지의 복사본은 타입과 일치하는 구독자에 전송된다
* 각 발행자는 단지 브로드캐스팅만 할 뿐, 누가 구독하는지 알지 못한다
* Redis 를 사용하여 발행 구독 시스템을 빠르게 구현할 수 있다

# TCP/ IP
* 인터넷은 커넥션을 맺고, 데이터를 교환하고, 커넥션을 종료하고, 타임아웃을 처리하는 등의 방법에 대한 규칙에 의거한다
* 이것을 프로토콜이라고 하며, 계층으로 정렬되어 있다
* 계층의 목적은 일을 처리하는 데 있어 새로운 여러 가지 대안을 허용하기 위함이다
* 가장 낮은 계층에서는 전기 신호를 처리한다, 그리고 각 계층은 층층이 쌓여 있다
* 중간에 있는 계층은 네트워크의 위치와 데이터 흐름의 패킷을 명시하는 IP 계층이다
* IP 계층에는 네트워크 위치 사이에서 바이트를 이동하는 방법을 기술하는 다음 두 가지 프로토콜이 있다
	1. UDP (User Datagram Protocol, 사용자 데이터그램 프로토콜)
	* 이 프로토콜은 짧은 데이터 교환에 사용된다, 데이터그램은 엽서의 짧은 글처럼, 한 단위로 전송되는 작은 메시지다
	* UDP는 한 청크에 데이터를 보낸다, 데이터 전송을 보장하지 않는다
	* UDP를 통해 메시지를 보낼 경우 크기 제한이 있고, 순서 없이 도착하거나 모두 도착하지 않을 수도 있다

	2. TCP (Transmission Control Protocol, 전송 제어 프로토콜) 
	* 이 프로토콜은 수명이 긴 커넥션에 사용된다, TCP 는 바이트 스트림이 중복 없이 순서대로 도착하는 것을 보장한다
	* 데이터를 보낸 순서대로 전달한다, 전송에 문제가 생기면 다시 보낸다
	* 메시지가 아닌 바이트 스트림을 전송한다, 시스템의 각 송수신 호출에서 얼마나 많은 바이트가 전달되는지 알 수 없다
	* 전체 메시지를 전달하기 위해 세그먼트로부터 전체 메시지를 재구성하기 위한 몇 가지 추가 정보가 필요하다

* 개발자들은 네트워크가 연결된 머신에서 데이터를 분산하여 분석하는 것이 개별적인 머신에서 수행하는 것보다 더 빠르다는 것을 발견했다
* 맵리듀스를 이용하면 여러 머신에서 계산을 수행하여 결과를 수집한다 (큐 작업과 비슷하다)
* 하둡은 머신 간에 데이터를 복사하여 맵과 리듀스 프로그램을 통해 이들을 실행한다
* 항상 테스트를 더 많이하고 디버깅은 적게 하는 게 좋다

# 수학 함수
* fabs() : 절대값을 반환
* floor() : 내림, ceil() : 올림하여 정수를 반환
* factorial() : 팩토리얼
* log() : 로그함수
* pow() : 거듭제곱
* sqrt() : 제곱근
* hypot() : 빗변의 길이 구하는 함수
* Decimal() : 정확한 부동소수점수 계산
* array() : 팩 시퀀스 사용, 배열 만들기, ndim 랭크를 반환, size 배열에 있는 값의 총 개수 반환, shape 랭크에 있는 값의 개수를 반환
* arange() : 배열 만들기
* zeros(), ones(), random() : 배열 만들기
* reshape() : 배열 모양 바꾸기
* 

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
	

