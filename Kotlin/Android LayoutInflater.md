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

# lazy properties
* lateinit 은 필요할 경우 언제든 초기화가 가능한 Properties 이다
* lazy 초기화는 기존 val 변수 선언에 by lazy 를 추가함으로 lazy {} 에 생성과 동시에 값을 초기화하는 방법을 사용한다
* 호출 시점에 by lazy 정의에 의해서 초기화를 진행한다
* val 에서만 사용이 가능하다
* val 이므로 값을 교체하는 건 불가능하다
* 초기화를 위해서는 함수명이라도 한번 적어줘야 한다
* lazy 를 사용하는 경우 기본 Synchronized 로 동작한다

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


