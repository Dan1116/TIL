# Android Studio 2.2
* ⌘ : command
* ^ : control
* ⇧ : shift
* ⌥ : option (alt)
* ⏎ : return (enter)
* ⇥ : tab
* ⎋ : esc

### Refector
* ⌘O : editor 키, 클레스의 이름을 찾을 수 있다 (대문자로 조회하면 좋다)
* ⌘⇧O  : 파일 찾는 키
* ⌘E : 최근 사용 파일 찾는 키
* ⌘⌥ M : 메서드 분리하는 키
* ⌘ F6 : 메서드 시그니쳐(명칭, 반환타입, 파라메터타입과 명칭, 접근자 등) 변경
* ⌘⌥C : 상수 분리 생성 (public static final …)
* ⌘⌥F : 필드(객체변수) 분리
* ⌘⌥V : 지역변수 분리

### 에디터
* ⌥⏎ : Quick fix - 오류 해결 솔루션 제시
* ⌘⇧↑, ⌘⇧↓ : 선택된 코드 영역 위, 아래로 이동
* ⌘ Del : 한 줄 삭제
* ⌘⇧] : 에디터 탭 기준 오른쪽으로 이동
* ⌘⇧[ : 에디터 탭 기준 왼쪽으로 이동
* ⌥↑ : 커서 기준으로 단위 영역(단어, 영역, 문장, 메서드 등) 선택 - 강추
* ⌘ F12 : 현재 클래스 필드, 메서드 등 목록 노출 - lombok 사용할 시 편함
* ⌘N : 각종 코드 생성 (getter, setter, override, DI 등)
* ⌃O : 상위클래스 override
* ⌃⌥O : Auto import
* ⌥⇥ : 스플릿(화면분할) 상태에서 화면 간 이동
* Split Vertical 단축키를 지정하고 쓰면 더 좋음 - 저는 ⌃⌥V로 지정
* ⌥ F1 then to1 or ⏎ : 현재파일 Project View 에서 활성화
I
### 실행
* ⌘ F9 : 컴파일
* ⌘R : Run View에서 현재 포커싱 실행 (실행 중이면 재실행)
* ⌘ F2 : Run View에서 현재 활성화된 실행을 Kill
* ⌃R : 최근 실행한 것을 다시 실행
* ⌃⌥R : 현재 커서나 포커싱 된 파일에 실행가능한 것을 노출 후 선택 실행 가능
* 보통 단위테스트 시 해당 커서가 메서드안에 있는 상태에서 위 단축키를 누르고 2를 누르면 바로 메소드 테스트 실행
* ⌃D : 최근 실행한 것을 다시 실행 - 디버깅 모드
* ⌃⌥D : 현재 커서나 포커싱 된 파일에 실행가능한 것을 노출 후 선택 실행 가능 - 디버깅 모드

### 생성
* ⌘⇧T : 테스트케이스생성
* 이후 ⌘N 을 이용하면 테스트메서드 생성이 편리함

### 이동
* ⌘B : 클라이언트 코드에서 해당 메소드 선언으로 이동
* ⌘⌥B : 클라이언트 코드에서 해당 메소드 구현으로 이동 - 강추
* ⌘U : 구상클래스에서 해당 메소드 선언으로 이동
* ⌘⌥←, ⌘⌥→ : 이전, 다음 작업영역으로 이동

### 작업(형상)관리
* ⌘K : 커밋
* 커밋 확인 후 ⌃⏎를 치면 됨
* 만약 review 여부를 물으면 Commit 버튼을 ⇥으로 포커싱 후 Space를 입력
* ⌥⇧N : Task 추가 - ⌘9 와 연계하면 작업관리 시 편함
* ⌥⇧C : Recent Changes
* 
### Multiline
* ⌘⌃G : 커서가 위치한 단어 기준 multiline 제어
* ⌘⇧8 + ⇧↑, ⇧↓ : multiline 모드 활성화 후 라인 선택
* ⌥⇧ MouseLeftClick : 마우스로 클릭한 위치 기준으로 multiline 제어

### 검색
* ⌘⇧F : 문자열 전체 검색

### 바로가기
* ⌘, : 환경설정
* ⌘; : 프로젝트 환경설정

* ⌃Space : 클래스 이름을 치다가 누르면 클래스 이름을 자동적으로 완성해준다 (만약 종류가 여러가지이면, 리스트를 보여준다)
* ⌥F7 : 수정하거나 어디에 사용되고 있는지 빠르게 찾을 수 있는 키
* F1 : 어떠한 다큐멘테이션에 사용되었는지 빠르게 알 수 있는 키
* ⌘B : Navigate | Declaration
* ⌘F12 : Navigate | File Structure
* ⌘↓ : 어디에 어떻게 쓰이는지 알 수 있게 해주는 키 (Alt 클릭과 같은 것)
* ⇧F6 : Refactor | Rename
* ⌃O : Code | Override Methods
* ⌃I : Code | Implement methods
* ⌃⇧Space :  SmartType code completion (SmartType code completion may be used after the new keyword)
* ⌘N : Code | Generate, getter, setter
* ⌥F1 : select the currently edited element (class, file, method or field)
* ⌥⌘T : Code | Surround With, choose try / catch