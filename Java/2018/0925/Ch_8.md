# Ch_8
## 클래스 패스 (class path)
* 등록 하는 법 -

### 환경변수
* 환경변수 path는 확장자가 exe인 실행 파일을 찾는 경로 ( 환경변수 path 확인 명령문 -> `echo %path%` )
* 환경변수 classpath는 확장자가 class 인 클래스 파일을 찾는 경로

## 패키지 (package) - 중복되는 것을 방지하기 위해
* 클래스 파일을 저장할 디렉터리를 달리한다
* 클래스의 디렉터리 위치를 지정해서 인스턴스를 생성

### 패키지와 클래스패스의 관계
* 패키지도 클래스패스를 기준으로 검색

### 패키지를 선언하는 법
* 이 클래스는 orange.area 패키지에 묶겠다 
* -> `package orange.area;`

### import 선언
* 이름 중복이 일어나지 않을 때 사용할 수 있다
    