# FragmentManager와 ChildFragmentManager
* ChildFragmentManager라는 클래스는 따로 없다
* Activity.getFragmentManager()나 Fragment.getFragmentManager()에서 반환하면 FragmentManager(이하 FM), Fragment.getChildFragmentManager() 메소드에서 반환되는 FragmentManager 객체를 ChildFragmentManager(이하 CFM)라고 보통 부른다
* FM과 CFM 모두 FragmentManager 클래스의 객체이니, 동작은 유사하다
* FM은 액티비티, 액티비티 속 프레그먼트(이하 자식 프레그먼트) 그리고 프레그먼트 속 프레그먼트(이하 손자 프레그먼트)가 모두 사용할 수 있다
* CFM은 프레그먼트(자식)와 프레그먼트 속 프레그먼트(손자)들만 사용할 있다
* FM에서 관리되는 손자 프레그먼트라면, getFragmentManager()는 액티비티의 getFragmentManager()와 동일한 객체를 반환한다
* CFM에서 관리되는 손자 프레그먼트라면, getFragmentManager()는 부모(액티비티의 자식) 프레그먼트의 getChildFragmentManager()와 동일한 객체를 반환한다
* getFragmentManager() 와 getChildFragmentManager() 두 개를 유지하는 이유는 remove() 메소드를 통해 프레그먼트를 제거할 때 유용하기 때문이다


