//import UIKit
print("a")

//function
print("a")
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

