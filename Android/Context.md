# Context 
* Context는 Application 이나 Object의 현재 상태를 나타낸다, 새롭게 생성된 object들이 어떤 상황에 있는지 알 수 있도록 해준다
* 프로그램의 다른 정보들에 관련된 정보를 얻을 수 있다
* Context는 시스템을 다룬다, 데이터베이스나 Preference, 리소스등에 접근할 수 있도록 한다
* 안드로이드 앱은 Activity들을 가지고 있는데, 현재 실행중인 애플리케이션의 환경을 다룰 수 있도록 한다
* Activity object는 Context object를 상속받는다. 이 context는 안드로이드 환경에 관련된 Resource와 class, 그리고 정보들에 접근할 수 있도록 한다
* Activity 실행, Intent 브로드캐스팅, Intent 수신등과 같은 안드로이드 시스템에서 제공하는 API를 호출할 수 있는 기능을 제공하는 클래스이다
* Context 는 Application이 생성될 때나 Android 각 컴포넌트들이 생성될 때 서로 다른 종류의 Context 이 생성된다
* 자신이 어떤 Application을 나타내고 있는지 Android System에 알려주는 ID 역할과 안드로이드에서 어플리케이션 관련된 정보에 접근하고자 할 떄 통해야만 하는 ActivityManagerService 에 접근할 수 있도록 하는 통로 역할을 한다
* 잘못된 Context 사용은 메모리 누수를 발생 시킬 가능성이 높다

## Application Context
* Application Context는 싱글톤이고, activity에서 getApplicationContext() 로 접근할 수 있다
* 이 context는 application의 생명주기와 연관이 있다, Application context는 현재 context로부터 분리되어있거나, activity 범위를 넘어서 존재할때 사용될 수 있다
* Context 가 처리해야할 것보다 길게 살아야 있어야 하는걸 알았을 때만 getApplicationContext() 를 사용해야 한다

## Activity Context
* 이 Context는 activity에서 사용할 수 있고, activity의 생명주기와 연관이 있다
* activity context는 반드시 activity 범위에서 주고받거나, 현재 context에 붙어있는 생명주기의 context일때 사용해야만 한다

## ContentProvider에 있는 getContext()
* 이 context는 Application의 context이고, application context와 유사하게 사용될 수 있다. getContext()를 통해서 사용할 수 있다

## getApplicationContext() 를 사용하면 안되는 경우
* Activity에서 서포팅하는 모든것은 완벽하지 않다, 대부분 GUI와 연관된 작업들을 할때getApplicationContext() 를 사용하면 정상적으로 동작하지 않을 가능성이 크다
* 만약 getApplicationContext() 로부터 clean up 하지 않은 호출로 어떤걸 생성하면 메모리 누수가 발생할 수 있다
* Activity에서 만약 GC가 어떤걸 잡고있다면, Application object는 프로세스 생명주기에 남아있는다

## 규칙
* 대부분의 경우, context를 직접적으로 사용하는것은 현재 동작하고 있는곳 내부에서 호출하는것이 좋다
* 컨포넌트의 생명주기를 넘지 않는 선에서 참조하는것이 안전하다. Activity 나 Service에 상관없이 Object에 Context를 저장시켜야 할 경우가 있다, 이럴땐 Application context를 사용하는게 좋다