# Gson @SerializedName
* Gson 은 자바 객체와 JSON 간의 직렬화 및 역직렬화를 위한 오픈소스 자바 라이브러리이다
* @SerializedName 어노테이션의 value 는 객체를 직렬화 및 역직렬화 할 때 이름으로 사용된다
* 이 어노테이션을 이용하면 변수 이름을 바꿔 넣을 수도 있습니다.

# FragmentManager와 ChildFragmentManager
* ChildFragmentManager라는 클래스는 따로 없다
* Activity.getFragmentManager()나 Fragment.getFragmentManager()에서 반환하면 FragmentManager(이하 FM), Fragment.getChildFragmentManager() 메소드에서 반환되는 FragmentManager 객체를 ChildFragmentManager(이하 CFM)라고 보통 부른다
* FM과 CFM 모두 FragmentManager 클래스의 객체이니, 동작은 유사하다
* FM은 액티비티, 액티비티 속 프레그먼트(이하 자식 프레그먼트) 그리고 프레그먼트 속 프레그먼트(이하 손자 프레그먼트)가 모두 사용할 수 있다
* CFM은 프레그먼트(자식)와 프레그먼트 속 프레그먼트(손자)들만 사용할 있다
* FM에서 관리되는 손자 프레그먼트라면, getFragmentManager()는 액티비티의 getFragmentManager()와 동일한 객체를 반환한다
* CFM에서 관리되는 손자 프레그먼트라면, getFragmentManager()는 부모(액티비티의 자식) 프레그먼트의 getChildFragmentManager()와 동일한 객체를 반환한다
* getFragmentManager() 와 getChildFragmentManager() 두 개를 유지하는 이유는 remove() 메소드를 통해 프레그먼트를 제거할 때 유용하기 때문이다

# RxKotlin SAM(Single Abstract Methods) Ambiguity
* SAM은 추상 메서드에 대해서 lambda 식을 제공한다
* Java에서 작성한 Interface 정의와 이를 활용하는 etOnClickListener 를 Kotlin 에서 부르는 경우에만 이에 해당한다

# Fragment
* 프래그먼트는 액티비티 내에서 화면 UI의 일부를 나타낸다
* 여러 개의 프래그먼트를 조합하여 액티비티가 출력하는 한 화면의 UI를 표현할 수 있으며 하나의 프래그먼트를 다른 액티비티에 재사용할 수 있다
* 액티비티처럼 하나의 독립된 모듈처럼 실행되기 때문에 액티비티와 연관된 생명주기를 가지고 있으며 액티비티 실행 중에도 화면에 동적으로 추가되거나 다른 Fragment 로 교체가 가능하다
* 기본적으로 한 개의 액티비티에 들어가는 화면 요소를 프래그먼트 단위로 나누어 관리하기 때문에 레이아웃을 분리 관리할 수 있고, 액티비티의 화면 구성을 위한 레이아웃의 복잡도도 줄일 수 있다

# Android LayoutInflater
* LayoutInflater 는 안드로이드에서 View 를 만드는 가장 기본적인 방법이다
* Fragment 의 View 를 만들거나 RecyclerView 에서 ViewHolder 를 만들 때, CustomView 에서 xml 로 정의된 View 를 merge 할 때 등 여러 곳에서 사용된다

## LayoutInflater 생성
* Context#getSystemService() , 가장 기본적인 방법으로 context 에서 LayoutInflater 를 가져오는 방법이다
* Activity#getLayoutInflater(), Activity 에서는 LayoutInflater를 쉽게 얻어올 수 있도록 getLayoutInflater () 를 제공한다

## AsyncLayoutInflater
* LayoutInflate 는 동기적으로(synchronous) 뷰를 생성 하기 때문에, support package 에서는 비동기적으로 뷰를 만들 수 있는  AsyncLayoutInflater  를 제공한다
*  XML내의 뷰 hierarchy 가 복잡하거나 UI스레드에서 inflate 하는데 시간이 너무 오래걸린다면 사용 할 수 있다

## 비동기로 뷰를 생성할 때 주의 할 점
* parent의 generateLayoutParam()이 thread safe해야 한다
* 생성자에서 Handler## 를 만들거나 Looper.myLooper()## 를 사용하면 안된다
* LayoutInflater.Factory 를 사용 할 수 없다
* Fragment 를 inflate 할 수 없다

# lateinit
* lateinit 은 꼭 변수를 부르기 전에 초기화 시켜야 한다
* var 에서만 사용이 가능하다 (mutable)
* var 이기 때문에 초기화를 변경할 수 있다
* null 을 통한 초기화를 할 수 없다
* 초기화를 하기 전에는 변수에 접근할 수 없다
* 변수에 대한 setter / getter properties 정의가 불가능하다
* lateinit 은 모든 변수가 가능한 건 아니고, primitive type 에서는 활용이 불가능하다
* lateinit 초기화를 확인 하는 방법은 실제 값을 사용할 때 lateinit 을 한번 체크해줌으로써 안전하게 접근할 수 있다, 이때 ::을 통해서만 접근이 가능한 .isInitialized 을 사용하여 체크할 수 있다

## lateinit 디컴파일
* 디컴파일한 코드를 통해 lateinit 이 어떤 식으로 동작하는지 확인이 가능하다
* 초기화를 하지 않으면 해당 메소드에 접근이 불가능하다
