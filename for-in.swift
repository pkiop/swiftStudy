import UIKit

// For in Loops'

//array
var names = ["john", "lee", "kim", "brian"] // 이렇게 쓰면 타입추론으로 알아서 됨
var ages = [5, 6, 2, 7, 5]
for element in ages {
   // print(element + " sir")
    print(element + 10)
}

// Dictionary
var people = ["John": 5, "lee" : 12, "kim" : 7]
for element in people {
    print(element.key)
    element.value
}

for index in 0..<people.count {
//    for index in 0...people.count { 이렇게하면 0,1,2,3까지 위는 2까지

    print(index)
}

for index in (0..<people.count).reversed() {
    print(index)
}
