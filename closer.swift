
func helloGenerator(message: String) -> (String, String) -> String {
  func hello(firstName: String, lastName: String) -> String {
    return lastName + firstName + message
  }
  return hello
}

let hello = helloGenerator(message: "님 안녕하세요!")
hello("abc", "b")

//Closer : 중괄호로 묶인 실행 가능한 코드블럭
// 함수이름정의가 따로 존재하지 않음.
// (함수는 이름이 있는 closer라고 생각)
// 다른 것은 in 키워드를 통해 파라미터, 반환 타입 영역과 실제 클로저의 코드를 분리하고 있음.
func helloGeneratorUsingCloser(message: String) -> (String, String) -> String {
    return { (firstName: String, lastName: String) -> String in
        return lastName + firstName + message
    }
}

let helloCloser = helloGeneratorUsingCloser(message: "hi") // return 값이 function
helloCloser("su", "kim")

// 클로저의 강력함 --> 간결함과 유연함. 생략이 더 가능

// 원래 함수의 반환 타입을 가지고 어떤 파라미터를 받고 어떤 타입을 반환하는지 추론 가능
func helloGeneratorUsingCloser1(message: String) -> (String, String) -> String {
    return { (firstName, lastName) -> String in
        return lastName + firstName + message
    }
}


// 파라미터 입력 순서에 따라 $x 로 받을 수 있음
func helloGeneratorUsingCloser2(message: String) -> (String, String) -> String {
    return {
        return $1 + $0 + message
    }
}

// 한줄로 작성이 가능하다면 return도 생략 가능
func helloGeneratorUsingCloser3(message: String) -> (String, String) -> String {
    return { $1 + $0 + message }
}

// 클로저는 변수처럼 정의 가능
let helloGLikeVariable: (String, String) -> String = { $1 + $0 + "Hi" }
helloGLikeVariable("abc", "D")

// optional, optional chaining도 가능
let helloOptional: ((String, String) -> String)? = { "print : " + $1 + $0}
helloOptional?("abc", "D")

// closer를 파라미터로 받기
func manipulate(number: Int, using block: (Int) -> Int) -> Int {
    return block(number)
}
manipulate(number: 10, using: { (number: Int) -> Int in
    return number * 2
})

//사용할 땐 생략도 가능
manipulate(number: 10, using: {
    $0 * 2
})

//마지막 파라미터가 클로저면 괄호와 파라미터 이름까지 생략가능
manipulate(number: 10) {
    $0 * 2
}

//클로저 활용
// sorted, filter, map, reduce
var numbers = [1, 3, 2, 6, 7, 5 ,8 ,4]
let sortedNumbers = numbers.sorted { $0 < $1 }
print(sortedNumbers)

var evens = numbers.filter { $0 % 2 == 0 }
print(evens)

let arr1 = [1, 3, 6, 2, 7, 9]
let arr2 = arr1.map{ $0 * 2 }

print(arr1.reduce(5) { $0 + $1 }) // 주어진 인자중 0번째부터 쭉 더함. 숫자 0은 맨처음 인자를 말함. 0으로 해서 더해서 영향 없게
arr1.reduce(0, +) // swift에서 연산자도 함수. +라는 연산자를 클로저로 넘겨버릴수도.
