# RecyclerView
* RecyclerView를 구현하려면 Adapter, Divider, LayoutManager를 구현해야 한다
* 개발자가 자신의 앱에 유연하게 적용할 수 있도록 역할이 분리되어 설계가 되었다 
* 기본적으로 자주 사용되는 객체들은 SDK에서 제공을 하고 있고, 필요한 경우 자신만의 객체를 생성할 수 있다

# Adapter
* Android 에서 AdapterView는 매우 중요하다
* Adapter 는 Data 를 관리하고 RecyclerView를 갱신한다
* Adapter 는 화면에 필요한 Item을 구성하고 이를 통해 완성된 View를 관리한다, 따라서 Adapter는 View와 Model 의 모습을 모두 가지고 있다
* Adapter 는 ListView (RecyclerView) 에서 효율적으로 데이터와 뷰를 관리하기 위해 만들어진 것이다
* DataModel 과 View 의 역할을 동시에 수행하고 있기 때문에 Clean Architecture 에서는 그 역할을 명확하게 나누어서 설계기 모호한 부분이 있다

## RecyclerView
* 리사이클러뷰는 데이터 목록을 아이템 단위의 뷰로 구성하여 화면에 표시하기 위해 어댑터를 사용한다
* 사이클러뷰에서는 아이템 뷰가 나열되는 형태를 관리하기 위한 요소를 제공하는데, 이를레이아웃매니저(Layout Manager) 라고 부른다

## 뷰홀더(ViewHolder)
* 뷰홀더(ViewHolder)는 화면에 표시될 아이템 뷰를 저장하는 객체이다