# MVC
## Model - View - Controller
### Model 
* 무엇을 할 것인지를 정의한다, 내부 비지니스 로직을 처리하기 위한 역할을 한다

### View
* 화면에 무엇인가를 보여주기 위한 역할을 한다
* 컨트롤러 하위에 종속되어, 모델이나 컨트롤러가 보여주려고 하는 모든 필요한 것들을 보여준다
* 사용자의 입력을 받아서 모델의 데이터를 업데이트를 한다

### Controller
* Model이 어떻게 처리할지를 알려주는 역할을 하고, 화면의 로직처리 부분이다
* Model과 View 가 각각 무엇을 해야 할 지를 알고 있고, 통제한다
* 비지니스 로직을 처리하는 Model 과 완전히 UI에 의존적인 View 가 서로 직접 이야기 할 수 없게 한다

## MVC 의 한계
* MVC 에서 View 는 Controller 에 연결되어 화면을 구성하는 단위 요소이므로 다수의 View 들을 가질 수 있다
* Model 은 Controller 를 통해서 View 와 연결되지만, 이렇게 Controller 를 통해서 하나의 View 에 연결될 수 있는 Model도 여러개가 될 수 있다
* 뷰와 모델이 서로 의존성을 띄게 된다
* MVC가 너무 복잡하고 비대해져서, 새 기능을 추가할때마다 크고 작은 문제점을 가지고 소스 분석이나 테스트도 어려워진다