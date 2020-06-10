// Class inheritance

// 스위프트 상당부분 copy함 . 참조가 아니라

struct MyDesk {
    var a = 10
    func test() {
        
    }
}
//structure 는 상속이 없다.
struct Soccer {
    var homeScore = 0
    var awayScore = 0
    
    func result() -> String {
        return "\(homeScore)" + " : " + "\(awayScore)"
    }
}

var soccer = Soccer()
soccer.result()

// 축구처럼 점수 내는게 아주 유사할 것
class Baseball {
    
}

class Football {
    
}

// --- * --- //
class ScoreBoard {
    var homeScore = 0
    var awayScore = 0
    
    func result() -> String {
        return "\(homeScore)" + " : " + "\(awayScore)"
    }
}

// 다 물려받음
class Tennis: ScoreBoard {
    
}

var tennis = Tennis()
tennis.result()
tennis.awayScore = 0
tennis.homeScore = 15
tennis.result()

// override

class Soccer2: ScoreBoard {
    //result치고 엔터치면 자동완성
    override func result() -> String {
        return "\(homeScore)" + " - " + "\(awayScore)"
    }
}

var soccer2 = Soccer2()
var soccer3 = soccer2
soccer2.result()
soccer3.homeScore = 111
soccer2.result()
// 참조    : 주소
// 값 복사



//
//class Animal {
//    let numberOfLegs = 4
//}
//
//class Dog: Animal {
//    var name: String?
//    var age: Int?
//
//    func simpleDescription() -> String {
//        if let name = self.name {
//            return "Hi \(name)"
//        } else {
//            return "Oops No name"
//        }
//    }
//}

struct Coffee {
    var name: String?
    var size: String?
    
    func simpleDescription() -> String {
        if let name = self.name {
            return "= \(name)"
        } else {
            return "= No name"
        }
    }
}

var myDog = Dog()
myDog.name = "happy"
myDog.age = 3
print(myDog.simpleDescription())
print(myDog.numberOfLegs) // 구조체는 상속 불가

var myCoffee = Coffee()
myCoffee.name = "Ame"
myCoffee.size = "venti"
print(myCoffee.simpleDescription())

//class -> Reference
//Struct -> Copy

//4 Initializer

class Cat {
    var name: String?
    var age: Int?
    
    init() {
        self.age = 0
    }
}

// 속성이 optional 이 아니면 반드시 초기값을 가져야 한다.
// 생성자에서 해주거나 바로 var a = 1 이렇게 해주는 방법 2가지
struct Cider {
    var name: String?
    var size: String?
    
    init() {
        self.size = "Tall"
    }
}


class Animal {
    let numberOfLegs = 4
    init(_ newname: String?) {
        print("nothing")
    }
}

class Dog: Animal {
    var name: String?
    
    //override --> 부모 클래스의 무엇 가져오기
    override init(_ newname: String?) {
        self.name = newname
        super.init("happy")
    }
    func simpleDescription() -> String {
        if let name = self.name {
            return "Hi \(name)"
        } else {
            return "Oops No name"
        }
    }
    
    deinit {
        print("메모리에서 해제됨")
    }
}

var yourDog = Dog("happy")
yourDog.simpleDescription()


//Property

struct Hex {
    var decimal: Int?
    var hexString: String? {
        get { // set 없이  get 만 정의할 경우, get 키워드 생략가능. 이 속성은 Read Only 라고 함.
            if let decimal = self.decimal {
                return String(decimal, radix: 16)
            } else {
                return  nil
            }
        }
        set {
            if let newValue = newValue {
                self.decimal = Int(newValue, radix: 16)
            } else {
                self.decimal = nil
            }
        }
    }
    var hexCode: String? { // get 생략
        if let hex = self.hexString {
            return "0x" + hex
        }
        return nil
    }
    
    var decimal2: Int? {
        willSet { // 속성에 값이 지정되기 직전에 원하는 코드 실행
            print("\(self.decimal2)에서 \(newValue)로 값이 바뀔 예정입니다.")
        }
        didSet { // 값이 바뀐 후 원하는 코드 실행
            print("\(oldValue)에서 \(self.decimal)로 값이 바뀌었습니다.")
        }
    }
}

var hex = Hex()
hex.decimal = 10
hex.hexString // "a"

hex.hexString = "b"
hex.decimal// 11
