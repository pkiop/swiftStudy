func sayHi() -> String {
    return "Hello"
}


//함수 형태의 closure -> 그냥 closure 치고 엔터누르면 형태 만들어짐
// in 다음에 필요한 구조
// 클로저 받을 것 필요
// sayHi2에는 클로저 내용 전부가 들어있다.
//
//var sayHi2 = { (<#parameters#>) -> <#return type#> in
//    <#statements#>
//}

var sayGreet = { () -> String in return "Hello" }

sayGreet()

func sayHiwithparam(name: String) -> String {
    return "\(name) Hello1"
}


var sayGreetwithParam = { (name: String) -> String in return "Hello2" }
// type inference
var sayGreetwithParam2 = { (name: String) in return "Hello2" } // return 타입 추론 가능

// Implicit Returns from Single-express closure (암시적 리턴 - 한줄일때만)
var sayGreetwithParam3 = { (name: String) in "Hello2" } // return 이 없어도 실행될 수 있음 ( 한줄만 쓰고 끝내는 경우 그게 return인 것 확실히 아니까

//
var sayGreetwithParam4: (String) -> String = { (name) in "Hello4" } // 타입 앞에 미리 지정 가능

// Shortand Arguments Names (인자 이름 축약)
var sayGreetwithParam5: (String, String) -> String = { $0 + " " + $1 } // 오지게 생략

sayHiwithparam(name: "Hi")
sayGreetwithParam("Jin")
sayGreetwithParam2("Jin")
sayGreetwithParam4("Jin")
sayGreetwithParam5("Jin", "abc")


// Closure Expert

var names = ["apple", "lemon", "brown", "red", "band", "candy"]

// filter a로 시작, b로 시작

func filterString(datas: [String], firstString: String) -> [String] {
    var newDatas = [String]()
    for index in 0..<datas.count {
        if datas[index].first?.description == firstString { // string의 first -> 첫번째 글자
            newDatas.append(datas[index])
        }
    }
    return newDatas
}

filterString(datas: names, firstString: "a")
filterString(datas: names, firstString: "b")

// 이걸 클로저로

func filterStringClosure(datas: [String], closure: (String) -> Bool ) -> [String] {
    var newDatas = [String]()
    for data in datas {
        if closure(data) == true {
            newDatas.append(data)
        }
    }
    
    return newDatas
}

//호출하는 부분에 구현부가 있음.
filterStringClosure(datas: names) { (element) -> Bool in
    if element.first == "a" {
        return true
    } else {
        return false
    }
}

var findA: (String) -> Bool = { element in // in 뒤는 실행되는 로직
    if element.first?.description == "a" {
        return true
    }
    return false
}

var findB: (String) -> Bool = { element in // in 뒤는 실행되는 로직
    if element.first?.description == "a" {
        return true
    }
    return false
}

var stringLength5: (String) -> Bool = { element in
    if element.count == 5 {
        return true
    }
    return false
}

filterStringClosure(datas: names, closure: findA)
filterStringClosure(datas: names, closure: findB)
filterStringClosure(datas: names, closure: stringLength5) // 같은 함수에 조건을 내마음대로



func sayHi() -> String {
    return "Hello"
}


//함수 형태의 closure -> 그냥 closure 치고 엔터누르면 형태 만들어짐
// in 다음에 필요한 구조
// 클로저 받을 것 필요
// sayHi2에는 클로저 내용 전부가 들어있다.
//
//var sayHi2 = { (<#parameters#>) -> <#return type#> in
//    <#statements#>
//}

var sayGreet = { () -> String in return "Hello" }

sayGreet()

func sayHiwithparam(name: String) -> String {
    return "\(name) Hello1"
}


var sayGreetwithParam = { (name: String) -> String in return "Hello2" }
// type inference
var sayGreetwithParam2 = { (name: String) in return "Hello2" } // return 타입 추론 가능

// Implicit Returns from Single-express closure (암시적 리턴 - 한줄일때만)
var sayGreetwithParam3 = { (name: String) in "Hello2" } // return 이 없어도 실행될 수 있음 ( 한줄만 쓰고 끝내는 경우 그게 return인 것 확실히 아니까

//
var sayGreetwithParam4: (String) -> String = { (name) in "Hello4" } // 타입 앞에 미리 지정 가능

// Shortand Arguments Names (인자 이름 축약)
var sayGreetwithParam5: (String, String) -> String = { $0 + " " + $1 } // 오지게 생략

sayHiwithparam(name: "Hi")
sayGreetwithParam("Jin")
sayGreetwithParam2("Jin")
sayGreetwithParam4("Jin")
sayGreetwithParam5("Jin", "abc")




