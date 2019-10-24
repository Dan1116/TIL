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
1. parent의 generateLayoutParam()이 thread safe해야 한다
2. 생성자에서 Handler## 를 만들거나 Looper.myLooper()## 를 사용하면 안된다
3. LayoutInflater.Factory 를 사용 할 수 없다
4. Fragment 를 inflate 할 수 없다


