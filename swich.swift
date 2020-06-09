
var someNumber = 6

switch someNumber {
case 5...7:
    print("5~7") // break 없는 것 상기
case 10:
    print("10")
case 16..<20:
    break
default:
    print("default")
}
