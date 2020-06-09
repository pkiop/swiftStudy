//import UIKit


func sum(number1: Int, number2: Int) -> Int{
    return number1 + number2
}

// 자리만 만들어 놓기
func sum2(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}

func sumAll(numbers: Int...) -> Int {
    ///numbers // array type
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

func sumreturnmany(_ num1: Int, _ num2: Int) -> (Int, Int, result: Int) {
    return (num1, num2, num1 + num2)
}

print(sum(number1: 5, number2: 22))
print(sum2(50, 20))
print(sumAll(numbers: 4,5,6))
print(sumreturnmany(1, 3))
print(sumreturnmany(4, 5).result)


func hello(name: String, time: Int) -> String {
    print(name, time)
    var string = ""
    for _ in 0..<time {
        string += "\(name) 안녕"
    }
    return string
}

print(hello(name: "abc", time: 3))

func hello2(to name: String, number time: Int) -> String {
    print(name, time)
    var string = ""
    for _ in 0..<time {
        string += "\(name) 안녕"
    }
    return string
}

print(hello2(to: "abc", number: 3))

func hello3(_ name: String, number time: Int) -> String {
    print(name, time)
    var string = ""
    for _ in 0..<time {
        string += "\(name) 안녕"
    }
    return string
}

print(hello3("abc", number: 3))

func hello4(_ name: String, number time: Int = 3) -> String {
    print(name, time)
    var string = ""
    for _ in 0..<time {
        string += "\(name) 안녕"
    }
    return string
}

print(hello4("abc"))

func sum(_ numbers: Int...) -> Int {
    var sum = 0
    for x in numbers {
        sum += x
    }
    return sum
}

print(sum(1, 2))
print(sum(1, 2, 3))

//function in function
func hello5(name: String, time: Int) -> (String, String) -> String {
    func msg(name: String, last: String) -> String {
        return "\(name) 안녕"
    }
    return msg
}

