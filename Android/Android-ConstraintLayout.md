# Android-ConstraintLayout
## Relative Positioning (상대적 배치)
* 상대적인 배치는 가장 기본적인 기능이다 
* View와 View 간의 제약조건을 통해 위치를 결정한다
* 가로축 상의 배치는 left, right, start 그리고 end 속성으로 할 수 있으며, 세로축 상의 배치는 top, bottom 그리고 text 에 한해서 baseline을 지정할 수 있다

* layout_constraintLeft_toLeftOf
* layout_constraintLeft_toRightOf
* layout_constraintRight_toLeftOf
* layout_constraintRight_toRightOf
* layout_constraintTop_toTopOf
* layout_constraintTop_toBottomOf
* layout_constraintBottom_toTopOf
* layout_constraintBottom_toBottomOf
* layout_constraintBaseline_toBaselineOf
* layout_constraintStart_toEndOf
* layout_constraintStart_toStartOf
* layout_constraintEnd_toStartOf
* layout_constraintEnd_toEndOf


## Margins (여백)
* 만약 여백을 주고 싶다면 margin을 이용하면 된다
* 여백에 들어가는 값은 오직 0 또는 양수값만 적용할 수 있다

* android:layout_marginStart
* android:layout_marginEnd
* android:layout_marginLeft
* android:layout_marginTop
* android:layout_marginRight
* android:layout_marginBottom

* 연결되었던 뷰의 가시성 (Visibility)이 숨김상태(GONE)일 때에 대한 여백을 따로 적용하고 싶을때 사용한다

* layout_goneMarginStart
* layout_goneMarginEnd
* layout_goneMarginLeft
* layout_goneMarginTop
* layout_goneMarginRight
* layout_goneMarginBottom

## Centering positioning (중앙 배치)
*  layout_constraintLeft_toLeftOf,  layout_constraintRight_toRightOf 를 둘다 parent 로 설정하면 View가 중앙정렬이 된다

* bias 라는 속성으로 이미 정렬된 View를 한쪽으로 치우치게 만들 수도 있다

* layout_constraintHorizontal_bias
* layout_constraintVertical_bias

## Circular positioning (원형 배치)
* layout_constraintCircle : 기준으로 참조할 View의 id
* layout_constraintCircleRadius : 참조한 View와의 거리(반지름)
* layout_constraintCircleAngle : 0부터 360까지 참조한 뷰로부터의 각도

## Dimension constraints (크기 및 치수에 대한 제약조건)
* ConstraintLayout 내에서 최소값 최대값을 정의 할 수 있다

* android:minWidth: 최소 가로 길이
* android:minHeight :최소 세로 길이
* android:maxWidth : 최대 가로 길이
* android:maxHeight : 최대 세로 길이

* 이 속성든은 ConstraintLayout 내에서만 사용이 가능하고, android:layout_width 및 android:layout_height 에 대한 값이 WRAP_CONTENT로 지정 되어 있어야 한다
* ConstraintLayout 에서 제약조건 이용시 MATCH_PARENT 를 사용하지 않는 것을 추천한다, 대신 left_right 또는 top_bottom 제약 조건과 함께 MATCH_CONSTRAINT 를 이용해야 한다

## WRAP_CONTENT
* 레이아웃 밖으로 빠져나가는 현상을 없앨려면 app:layout_constrainedWidth=”true|false”, app:layout_constrainedHeight=”true|false”
를 사용해야한다

## MATCH_CONSTRAINT
* 만약 뷰의 가로와 세로의 비율을 결정하고 싶다면 layout_constraintDimensionRatio를 이용하면 된다

## Chains (뷰끼리 연결)
* chain은 뷰간의 상호 참조 연결을 할때 어떤 방식으로 연결시켜 표현할지 결정한다
* 수평기준 가장 왼쪽에 있는 View 또는 수직 기준으로 가장 상단에 있는 View가 Head(기준)가 된다


![](Android-ConstraintLayout/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA%202019-07-25%20%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE%205.09.00.png)

