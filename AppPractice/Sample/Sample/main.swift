//
//  main.swift
//  Sample
//
//  Created by Dong Yeon Kang on 14/01/2019.
//  Copyright © 2019 Dong Yeon Kang. All rights reserved.
//

//  S      K
// let -> val
// var -> var

import Foundation

class User {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        print("User()")
    }
    
    deinit {
        print("~User()")
    }
}

var user: User? = User(name: "Tom", age: 42)
print("user 생성")
user = nil
print("프로그램 종료")
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

var fn: (Int, Int) -> Int = add
print(fn(10, 20))




