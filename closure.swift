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




