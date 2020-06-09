import UIKit

// Collection Type
// Array, Set, Dictionary

// Array
// 쭉 나열되어 있는 것
var someInts = Array<Int>() // 이렇게 쓰는 건 거의 없음
var someStrings = [String]() // 이렇게도 가능

// [] 빈 배열

someStrings.append("ㅁㅁ") // append안에 newelement(정한 타입 속성)와 contentOf (다른 배열을 넣을때 )
someStrings.append("ccc")
someStrings.append("3")

someStrings.remove(at:1) // "ㅁㅁ", "3"
// someStrings.remove(at:2) // error

var removeIndex = 2
if someStrings.count - 1 >= removeIndex {
    someStrings.remove(at: removeIndex)
}

print(someStrings.count)
print(someStrings)


// Set
// 쓰는 중요한 이유 -> 집합같이 사용하기 위해
// Set : 같은 것을 계속 넣을 수 없다. Hashable -> 고유값을 갖기 때문에 중복 X
print("---*set*---")

var strings = Set<String>()
strings.insert("aa")
strings.insert("bb")
strings.insert("cc")

strings.remove("cc")
strings.remove("dd")

print(strings)

var strings1 = Set<String>()
var strings2 = Set<String>()

strings1.insert("aa")
strings1.insert("bb")
strings1.insert("cc")
strings1.insert("zz")

strings2.insert("a")
strings2.insert("b")
strings2.insert("c")
strings2.insert("zz")

let union = strings1.union(strings2)
let interaction = strings1.intersection(strings2) // 교집합
let symm = strings1.symmetricDifference(strings2)
let sub = strings1.subtracting(strings2)
print(union)
print(interaction)
print(symm)
print(sub)

print("---*dic*---")

var sports = [String : Any]()

sports["soccer"] = "korea"
sports["baseball"] = 3
sports["football"] = true

print(sports)
sports["soccer"] = "seoul"

print(sports)
