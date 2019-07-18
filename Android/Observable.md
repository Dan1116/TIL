# Observable
* Delegatees.observable ( )은 초깃값과 수정에 대한 핸들러를 인자로 갖는다
* 프로퍼티에 값을 할당할 때마다 핸들러를 호출한다
* 핸들러는 할당 대상 프로퍼티, 이전 값, 새로운 값을 파라미터로 갖는다
* 만약 할당 과정 중간에 끼어들어 할당을 거부하고 싶다면, observable ( ) 대신에 vetoable () 을 사용하면 된다

```
import kotlin.properties.Delegates

class User {
  var name: String by Delegates.observable(“<no name>”) {
      prop, old, new ->
      println(“$old -> $new”)
  }
}

fun main(args: Array<String>) { 
  val user = User() 
  user.name = “first” 
  user.name = “second”
}
```