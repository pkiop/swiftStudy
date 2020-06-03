//Tuple

var coffeeInfo = ("아메리카노", 5100)
coffeeInfo.0
coffeeInfo.1
coffeeInfo.1 = 4100
coffeeInfo

var namedCoffeeInfo = (coffee: "아메리카노", price: 5100)
namedCoffeeInfo.coffee
namedCoffeeInfo.1

//간단한 자료형은 구조체 대신 튜플 사용

//튜플의 타입 어노테이션
var coffeeInfo2: (String, Int)
var namedCoffeeInfo2: (coffee: String, price: Int)

// 튜플 응용
let (coffee, price) = ("아메리카노", 5100)
coffee
price

// 튜플 값 무시
let (_, coffee2, price2) = ("lattee", "venti", 5600)
coffee2
price2

// 튜플 반환
func coffeeInfo(for name: String) -> (name: String, price: Int)? {
    let coffeeInfoList: [(name: String, price: Int)] = [
        ("아메리카노", 5100), ("라떼", 5600)
    ]
    for coffeeInfo in coffeeInfoList {
        if coffeeInfo.name == name {
            return coffeeInfo
        }
    }
    return nil
}

coffeeInfo(for: "아메리카노")?.price // 5100
coffeeInfo(for: "에스프레소")?.price // nil

let (_, lattePrice) = coffeeInfo(for: "라떼")!
lattePrice

