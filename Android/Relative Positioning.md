# Relative Positioning
* 이름에서도 알 수 있듯이 ConstraintLayout는 기본적으로 여러 가지 Constraint의 조합으로 구성된다
* 이에 따라 기본적으로 뷰의 위치를 다른 뷰에 상대적으로 지정하게 된다 아래 그림에서 가능한 몇 가지 Constraint를 확인할 수 있다

![](Relative%20Positioning/relative-positioning-constraints.png)


# Centering & Bias
* 좌우, 혹은 상하로 Constraint를 정의하면 가운데로 정렬된다
* android:layout_width=“wrap_content”
* android:layout_height=“wrap_content”
* app:layout_constraintLeft_toLeftOf=“parent”
* app:layout_constraintRight_toRightOf=“parent”


![](Relative%20Positioning/centering-positioning.png)


# Circular Constraints
* 뷰를 원형으로 배치할 수도 있다
* app:layout_constraintCircle=“@+id/target_view”
* app:layout_constraintCircleRadius=“48dp”
* app:layout_constraintCircleAngle=“45”


![](Relative%20Positioning/circle2.png)

# Demension Constraints
* ConstraintLayout에서는 뷰의 크기를 결정하는 여러 가지 방법을 제공한다
* 특정한 크기를 명시
* WRAP_CONTENT
* MATCH_CONSTRAINT(0dp)

# WRAP_CONTENT + Constraint
* ConstraintLayout 내에서 WRAP_CONTENT를 사용하면 기본적으로 크기에 대한 제한이 적용되지 않는다

# MATCH_CONSTRAINT
* ConstraintLayout 에서는 뷰의 너비와 높이를 지정하는 특별한 방법이 하나 있는데, 바로 MATCH_CONSTRAINT 이다
* android:layout_width=“0dp”
* android:layout_height=“0dp”
* app:layout_constraintTop_toTopOf=“parent”
* app:layout_constraintBottom_toBottomOf=“parent”
* app:layout_constraintLeft_toLeftOf=“parent”
* app:layout_constraintRight_toRightOf=“parent”
* 값을0dp로 지정하면, “Constraint에 따라서 뷰의 크기를 결정하겠다”라는 뜻이 된다
* ConstraintLayout에서는 MATCH_PARENT를 권장하지 않는다, 대신, 위와 같이MATCH_CONSTRAINT를 설정하고 Centering을 하면 MATCH_PARENT와 동일한 효과를 얻을 수 있다