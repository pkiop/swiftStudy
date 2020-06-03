// protocol

// 전송가능한 인터페이스 정의
protocol Sendable {
    var from: String? { get }
    var to: String { get }
    
    func send()
}

//클래스와 구조체에 protocol 을 conform시킬 수 있음.
//프로토콜을 적용하면, 프로토콜에서 정의한 속성과 메서드 모두 구현해야 함.
struct Mail: Sendable {
    var from: String?
    var to: String
    
    func send() {
        print("Send a mail from \(self.from) to \(self.to)")
    }
}

struct Feedback: Sendable {
    var to: String
    var from: String? {
        return nil // 피드백은 무조건 익명으로
    }
    
    func send() {
        print("Send a feedback to \(self.to)")
    }
}

//프로토콜은 추상클래스처럼 사용 가능

func sendAnything(_ sendable: Sendable) {
    sendable.send()
}

let mail = Mail(from: "abc@google.com", to: "abc@apple.com")
sendAnything(mail)

let feedback = Feedback(to: "abc@kakao.com")
sendAnything(feedback)

protocol Messageable {
    var message: String? { get }
}

// Sendable2를 적용하고 싶으면 var message: String? { get } 을 정의해 주어야한다.
protocol Sendable2: Messageable {
    // ...
}

//Any 와 AnyObject --> Any 는 모든 타입에 대응 // 약간 void느낌?
let anyNumber: Any = 10
let anyString: Any = "Hi"

class Dog {
    
}

let anyInstance: AnyObject = Dog()

//TypeCasting
//as 이용

//anyNumber + 1 // 컴파일에러. Int인지 string 인지 모름
let number: Int? = anyNumber as? Int // optional 을 취해주어야 함. because 어떤 타입이 있을 지 모르기 대문

//optional 이기 때문에 optional binding 문법도 사용 가능
if let number = anyNumber as? Int {
    print(number + 1)
}

// Type검사
print(anyNumber is Int)
print(anyNumber is Any) // always true
print(anyNumber is String)
print(anyString is String)


//Swift 주요 프로토콜

//CustomStringConvertible
//자기자신을 표현하는 문자열 정의
//public protocol CustomStringConvertible {
//    public var description: String { get }
//}

struct Cow: CustomStringConvertible {
    var name: String
    var description: String {
        return "\(self.name)"
    }
}

let cow = Cow(name: "abc")
print(cow)


// ExpressibleBy

// 원래 10은 Int "Hi"는 String 이라고 당연하게 인지
// but Int(10), String("Hi") 가 맞음
// 그냥 쓸 수 있는 이유는 Literal이기 때문

let number2 = 10
let string = "Hi"
let array = ["a", "b", "c"]
let dictionary = [
    "key1" : "value1",
    "key2" : "value2",
]

//이러한 literal을 가능하게 해주는 프로토콜 -> ExpressibleByXXXLiteral

struct DollarConverter: ExpressibleByIntegerLiteral {
    typealias IntegerLiteralType = Int
    
    let price = 1_177 // 가독성을 위해. 1177과 같음
    var dollars: Int
    
    init(integerLiteral value: IntegerLiteralType) {
        self.dollars = value * self.price
    }
}

let converter: DollarConverter = 100 // init의 인자로 들어감
converter.dollars

// Extension

extension String {
    var length: Int {
        return self.characters.count
    }
    
    func reversed() -> String {
        return self.characters.reversed().map { String($0) }.joined(separator: "")
    }
}

let str = "hi everybody"
str.length
str.reversed()
