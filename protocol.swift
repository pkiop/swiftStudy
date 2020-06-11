import UIKit

// cmd ctrl click -> 정의로

//protocol : 반드시 있어야 하는 내용 기재해둔 것

protocol DeskMaterial {
    var top: String { get set }
    var middle: String { get set }
}

protocol DeskSize {
    var width: Int { get set } // 입 출력 다한다.
    var height: Int { get set }
    func area() -> Int
}

protocol DeskInfo: DeskSize, DeskMaterial {
    
}

class MyClass: DeskSize {
    var width: Int = 0
    var height: Int = 0
    func area() -> Int {
        return width * height
    }
}


class MyClass2: DeskSize, DeskMaterial {
    var top: String = ""
    
    var middle: String = ""
    
    var width: Int = 0
    var height: Int = 0
    func area() -> Int {
        return width * height
    }
}

class MyClass3: DeskInfo {
    var top: String = ""
    
    var middle: String = ""
    
    var width: Int = 0
    var height: Int = 0
    func area() -> Int {
        return width * height
    }
}

print("done")
