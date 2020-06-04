// Nil Coalescing Operator
// 닐 병합 연산자

var myName: String?
var myScore: Int?
if myScore ?? 0 < 50 {
    
}
print(myName ?? "noname") // nil 일 때 대체할 것

