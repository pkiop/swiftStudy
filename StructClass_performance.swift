//
//  ViewController.swift
//  noSwiftUIyesStroyboard
//
//  Created by 박상신 on 2020/06/04.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

//struct 를 사용하면 성능상의 이점
// value type임
struct TestStruct {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// reference type
class TestClass {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class ViewController: UIViewController {

    //화면이 준비가 되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var testStruct: [TestStruct] = []
        var testClass: [TestClass] = []
        
        let startTime = CFAbsoluteTimeGetCurrent()
        
        for i in 0..<10000000 {
            testStruct.append(TestStruct.init(name: "aa", age: i))
        }
        
        let St_Time = CFAbsoluteTimeGetCurrent() - startTime
        let ST2 = CFAbsoluteTimeGetCurrent()
        
        for i in 0..<10000000 {
            testClass.append(TestClass.init(name: "aa", age: i))
        }
        
        
        let durationTime = CFAbsoluteTimeGetCurrent() - ST2
        print("Struct Time : \(St_Time)")
        print("Class  Time : \(durationTime)")
    }
}

