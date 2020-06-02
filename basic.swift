import UIKit

var str = "Hello, playground"

for i in 0..<100 {
    sin(Double(i) / 2)
    print(i)
}

var name = "pkiop"
let birthyear = 1995

name = "poikp"
print("\(name) 은 \(birthyear)에 태어났다.")

// array , dictionary
var alpha = ["a", "b", "c"]
var capitals = [
    "한국" : "서울",
    "일본" : "도쿄",
    "중국" : "베이징",
]

print(capitals, alpha)
print(capitals["한국"] as Any)

var alpha2:[String] = ["a", "b", "c"]
var capitals2:[String:String] = [
    "한국" : "서울",
    "일본" : "도쿄",
    "중국" : "베이징",
]

print(capitals2, alpha2)
capitals2["한국"]
print(capitals2["한국"])
print(alpha2[2])

// 빈 배열이나 dic 선언

var emptyarray: [String] = []
var emptydic: [String: String] = [:]
var emptyeasyarray = [String]()
var emptyeasydic = [String:String]()

//Control Flow

var age = 19
var student = ""

if age >= 8 && age < 14 {
    student = "ele"
} else if age < 17 {
    student = "mid"
} else {
    student = "else"
}

switch age {
case 8..<14: // pattern matching
    student = "ele"
case 14..<17:
    student = "mid"
default:
    student = "else"
}


for x in alpha {
    print("alpha : \(x)")
}

for (x, y) in capitals {
    print("cap : \(x), \(y)")
}

var repCnt = 5
for i in 0..<repCnt {
    print(i)
}

for _ in 0..<repCnt {
    print("simple repeat")
}

var i = 0
while i < repCnt {
    i += 1
    print(i)
}


//optional
//값이 있을수도, 없을 수도
var name2: String = "abc"
//name2 = nil // nil -> 값이 없다. error
var name3: String?
print(name3) // output : nil
var name4: String? = "abc"
print(name4) // output : Optional("abc")
//name2 = nil // nil -> 값이 없다.

//optional binding ==> 값이 있으면 넣고 없으면 넘어가는 조건문
if let temp = name3 {
    print(temp)
    print("this code not execute")
}

if let temp2 = name4 {
    print(temp2)
    print("ok")
}

//여러 optional binding
if let temp = name3, var temp2 = name4 {
    print(temp, temp2)
    // 둘 다 nil이 아니어야 실행된다.
    print("this code not execute")
}

//optional chaining

//temp code -> purpose : 이 배열이 빈 배열인지 검사하는 코드 작성
let array: [String]? = []
var isEmptyArray = false

if let array = array, array.isEmpty {
    isEmptyArray = true;
} else {
    isEmptyArray = false;
}

// temp code --> optional chaining

let isEmptyArray2 = array?.isEmpty == true
// array nil이면 nil을 return 하고 bool? 로 타입캐스팅되어 false
// array 가 empty 이면 isEmpty 가 true return
// array 요소 있으면 false return


//optional 벗기기

//옵셔널을 사용할 때마다 바인딩 하는 것이 바람직. 하지만 반드시 값이 존재한다고 생각하는데 옵셔널로 사용해야 하는 경우
// 옵셔널에 값이 있다고 가정하고 바로 접근하는 키워드 ! 를 사용
var optionalEmail: String? = "abc"
print(optionalEmail) // output : Optional("abc")
print(optionalEmail!) // output : abc

// 암묵적으로 벗겨진 옵셔널
var email: String! = "abcd"
print(email) // in Swift 5.2 --> output Optional("abcd") 3부터 그냥 암묵적옵셔널도 옵셔널과 거의 동일하게 취급하게 되었다는 설명 


