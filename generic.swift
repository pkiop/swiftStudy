
//Generic
// 타입을 바꿀 수 있음 (스위프트는 타입이 엄격하긴 하지만)

var intValue: Int = 5
var doubleValue: Double = 5.7
var floatValue: Float = 3.4

// 다른 타입 넣으면 error
func plus(a: Int, b: Int) -> Int {
    return a+b
}

// 그냥 <T>만 하면 +연산 안됨. 어떤 타입이 올 지 모르기 때문.
func plusGeneric<T: Numeric>(a: T, b: T) -> T {
    return a + b
}




plusGeneric(a: intValue, b: intValue)
plusGeneric(a: doubleValue, b: doubleValue)