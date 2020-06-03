enum Month: Int {
  case january = 1
  case february
  case march
  case april
  case may
  case june
  case july
  case august
  case september
  case october
  case november
  case december

  func simpleDescription() -> String {
    switch self {
    case .january:
      return "1월"
    case .february:
      return "2월"
    case .march:
      return "3월"
    case .april:
      return "4월"
    case .may:
      return "5월"
    case .june:
      return "6월"
    case .july:
      return "7월"
    case .august:
      return "8월"
    case .september:
      return "9월"
    case .october:
      return "10월"
    case .november:
      return "11월"
    case .december:
      return "12월"
    }
  }
}

let december = Month.december
december.simpleDescription()
december.rawValue

let october = Month(rawValue : 10)
print(october)

//다른 언어는 enum 원시값으로 int만. but swift는 좀 다름
enum IssueState: String {
    case open = "open"
    case closed = "closed"
}

// 원시값을 아예 가지지 않을 수도
enum Spoon {
    case dirt
    case bronze
    case silver
    case gold
    
    func simpleDescription() -> String {
        switch self {
        case .dirt:
            return "흙"
        case .bronze:
            return "동"
        case .silver:
            return "은"
        case .gold:
            return "금"
        }
    }
}

let spoon: Spoon = .gold // 변수에 타입어노테이션이 있기 때문에 생략 가능

func doSomething(with spoon: Spoon) {
    // ...
}

doSomething(with: .silver)

// 연관값
enum NetworkError {
    case invalidParameter(String, String)
    case timeout
}

let error: NetworkError = .invalidParameter("Email", "형식이 올바르지 않아오")

// 이 값을 가져올 수 있는 방법 2가지

if case .invalidParameter(let field, let message) = error {
    print(field)
    print(message)
}

switch error {
case .invalidParameter(let field, let message):
    print(field)
    print(message)

default:
    break
}

// optional 은 enum

public enum Optional<Wrapped> {
    case none
    case some(Wrapped)
}

let age: Int? = 20

switch age {
case .none:
    print("나이정보 없음")
case .some(let x) where x < 20:
    print("청소년")
case .some(let x) where x < 65:
    print("성인")
default:
    print("어르신")
}
