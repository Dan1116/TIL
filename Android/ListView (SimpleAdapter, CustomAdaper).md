# ListView (SimpleAdapter, CustomAdaper)
* ListView 에 사용자가 정의한 데이터를 표시하기 위해서는 Adapter를 사용해야 한다
* 어댑터는 사용자의 데이터를 받아 뷰를 생성해주는 객체로 ListView 와는 독립적으로 동작하는 객체이다
* ListView는 Adapter 로부터 생성된 뷰를 받아 ListView의 한 항목으로 배치한다
* 어댑터는 관리되는 데이터와 제공하는 뷰 형태에 따라 종류가 다양하다 
* ArrayList 나 문자배열 등 ListView 데이터를 넣어줄 초기화된 데이터 형을 만들어 준다
* 초기화된 데이터를 가지고 Adapter를 거쳐 ListView 각 position에 뿌려준다
* Adapter 는 ListView에 데이터를 넣어주는 중계역할을 수행한다
* SimpleAdapter 는 간단하게 ListView 에 데이터를 넣어주며 확장이 다소 적다
* CustomAdapter 는 데이터를 넣어주는 방식을 원하는 대로 설정이 가능하여 확장성이 높다

### 구현 순서
* ListView Widget을 배치 할 레이아웃 리소스정의
* ListView에 표시 할 데이터 객체를 위한 클래스 생성
* ListView의 각 항목을 위한 레이아웃 리소스 정의
* BaseAdapter를 상속 받아 Adapter 구현
* Adapter 와 ListView 연결
* ListView에 Click 이벤트 연결

### SimpleAdapter
* 간단한 소스코드로 생성이 가능하다, 하지만 원하는 ListView 디자인은 만들 수 없다

### CustomAdapter
* 통일된 디자인과 기능을 사용한다면 CustomAdapter 하나의 클래스를 이용하여 사용하면 편리하지만, ListView 형태가 각각 다른 CustomAdapter이라면 여러개의 CA를 선언해야 한다
* 일반적으로 ArrayAdapter 와 BaseAdapter를 많이 사용한다
