import Foundation

// * Reference Counting
//    - 참조 변수의 카운트를 통해 객체의
// 파괴시점을 결정하는 기술
// 1) GC
// 2) ARC

// Swift
//    Reference Type - class
//    Value Type     - struct, enum

// Java           Kotlin
//    Object           Any
// ObjC           Swift
//  NSObject           Any

/*
struct User2 {
    var name: String
    var age: Int
}
*/

class User {
    var name: String
    var age: Int
    
    // 초기화 메소드(생성자)
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // 객체가 파괴될 때 호출되는 블럭
    //  : C++의 소멸자와 동일한 개념
    deinit {
        print("~User")
    }
}

#if false
// User* user1 = new User("Tom", 42)
// user2 = user1;
// delete user1;
// user2->foo();

#endif


// 참조 계수: 소유권(Ownership)
// 1) 참조 계수의 증감이 스레드 안전하게 동작해야 한다.
//   : 멀티 코어에서 참조 계수의 증감은 원자적 연산을 사용하므로,
//     전체적인 프로그램의 성능을 저하시키는 요소가 된다.
// 2) 참조 계수도 누수의 위험이 존재한다.
//   : 순환 참조
//     => 접근할 수 있는 참조는 없지만,
//        내부적인 참조에 의해 절대 참조 계수가 0이 되지 않는 문제를 의미한다.

// C++: shared_ptr<T> - 소유권을 공유
//      unique_ptr<T> - 소유권을 독점
//   Raw Pointer vs shared_ptr

// 1. 처음 객체를 생성하면 참조 계수가 1이 된다.
var user1: User? = User(name: "Tom", age: 42)
// user1.retain() -> 참조 계수를 증가하는 연산

// 2. 객체의 참조를 다른 참조에 대입할 경우 참조 계수가 증가한다.
var user2: User? = user1
// user2.retain()  // 2

// user1.release() // 1
user1 = nil
// user2.release() // 0
user2 = nil

// User() - 파괴 : 0x100(ref) - autoniling X
// User() - 파괴 : 0x0(ref) - autoniling O


// weak: weak 참조를 통해 참조할 경우,
//       참조 계수가 증가되지 않는다.
// 문제점: 객체의 생존이 보장되지 않는다.
// swift / ObjC - auto niling
//  => 객체가 파괴될 경우, 참조의 값을 0(nil)로 변경하는 기술

// C++
//   shared_ptr<T> : weak_ptr<T>

// Android Framework(C++)
//   sp<T>         : wp<T>

// Java / Kotlin
//   T             : WeakReference / SoftReference
//                 => 객체의 파괴 시점이 다르다.
//                   WeakReference
//                   : GC가 발생되는 시점에 수거된다.
//                   SoftReference
//                   : OOM(GC)가 발생하는 시점에 수거된다.

class Node {
    var value: Int = 0
    weak var next: Node? = nil
    
    deinit {
        print("~Node")
    }
}

var p1: Node? = Node()  // ref: 1
var p2: Node? = Node()  // ref: 1

p1?.next = p2     // p2 ref: 2 -> 1
p2?.next = p1     // p1 ref: 2 -> 1

p1 = nil          // ref: 1
p2 = nil          // ref: 1


