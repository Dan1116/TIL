import Foundation

// Iterable / Enumerable / Sequence
// Iterator / Enumerator / IteratorProtocol

// Sequence
protocol SListIterable {
    func makeIterator() -> SListIterator
}

protocol SListIterator {
    func next() -> Int?
}

struct MyIterator: IteratorProtocol {
    var current: Node?
    init(_ current: Node?) {
        self.current = current
    }
    
    mutating func next() -> Int? {
        if let current = current {
            defer {
                self.current = current.next
            }
            
            return current.value
        }
        
        return nil
    }
}

struct SList: Sequence {
    typealias Iterator = MyIterator
    typealias Element = Int
    
    var head: Node?
    
    mutating func addFront(value: Int) {
        head = Node(value: value, next: head)
    }
    
    func makeIterator() -> SList.Iterator {
        return Iterator(head)
    }
    
    //    func makeIterator() -> IteratorProtocol {
    
    //    }
}


class Node {
    var value: Int
    var next: Node?
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}



var list = SList()
list.addFront(value: 10)
list.addFront(value: 20)
list.addFront(value: 30)

/*
 var iter = list.makeIterator()
 while let e = iter.next() {
 print(e)
 }
 */
for e in list {
    print(e)
}

// 5min
struct CountDown {
    var current: Int
    init(_ current: Int) {
        self.current = current;
    }
}

struct CountDownIterator: IteratorProtocol {
    typealias Element = Int
    var current: Int
    
    init(_ current: Int) {
        self.current = current
    }
    
    mutating func next() -> Int? {
        if current > 0 {
            defer {
                current -= 1
            }
            
            return current
        }
        
        return nil
    }
}

// POP(Protocol Oriented Programming)
extension CountDown: Sequence {
    func makeIterator() -> CountDownIterator {
        return CountDownIterator(current)
    }
    
    typealias Iterator = CountDownIterator
    typealias Element = Int
}

for e in CountDown(5) {
    print(e)
}



let arr = [5, 3]
// 변환(transform, map)
// 필터(filter)

// map / flatMap
// Swift flatMap(compactMap)은 Optional을 처리하는 용도로 사용됩니다.
let result = arr.compactMap { e -> Int? in
    if e % 2 == 0 {
        return e
    } else {
        return nil
    }
}

print(arr.flatMap {
    return 0...$0
})


// print(result)

// map
// flatMap
// filter
