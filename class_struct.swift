
class Animal {
    let numberOfLegs = 4
}

class Dog: Animal {
    var name: String?
    var age: Int?
    
    func simpleDescription() -> String {
        if let name = self.name {
            return "Hi \(name)"
        } else {
            return "Oops No name"
        }
    }
}

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
