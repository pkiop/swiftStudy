let numberArray = [2, 3, 6, 4, 1]
let mapped = numberArray.map{ $0 * 10 }
print(mapped)

let stringArray = ["Lee", "june", "kim"]
let mappedString = stringArray.map{ $0.uppercased()}
print(mappedString)

//compact map ( 자동으로 언래핑 )
let someArray: [Any] = [2, 3, 4, "kim", "jin"]
let compactMapped = someArray.compactMap { $0 as? Int }
print(compactMapped)

// filter
let over3 = stringArray.filter{ $0.count == 3 }
print(over3)

//reduce
let reduceResult = numberArray.reduce(0) { $0 + $1 }
print(reduceResult)

let reduceResultString = stringArray.reduce("aaa ", {$0 + $1})
print(reduceResultString)
// sort
var numberArray2 = [2, 3, 6, 4, 1]

numberArray2.sort(by: >)
print(numberArray2)

numberArray2.sort(by: <)
print(numberArray2)

// 값 변경이 필요없으면
print(numberArray.sorted())

