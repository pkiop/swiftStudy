// Properties 프로퍼티

// Stored Properties   -- 저장 프로퍼티
// Computed Properties -- 계산 프로퍼티

class SomeClass {
    var score = 10 // Stored Properties
    
    var firstScore = 10
    var secondScore = 20
    // var totalScore = firstScore + secondScore 불가능
    var totalScore = 0
    
    // 이건 function으로서. property로서 이렇게 존재하면 좋겠다면,
//    func totalScorefunc() -> Int {
//        totalScore = firstScore + secondScore
//        return totalScore
//    }
    var tempTotal = 0
    
    var totalScoreProperty: Int {
        get { // 가져올 때. get만 있으면 생략 가능
            return firstScore + secondScore
        }
        set { // 입력하고 싶을 때
            tempTotal = firstScore + secondScore
        }
    }
}

var someClass = SomeClass()
someClass.totalScore = 10
someClass.firstScore = 50
someClass.secondScore = 100
someClass.totalScoreProperty
struct SomeStruct {
    var score = 10
}

enum SomeEnum {
    //var score = 10 // Enum can't use Stored Properties
    case iPhone
    case iPad
    
    var price: Int {
        switch self {
        case .iPad:
            return 500
            
        case .iPhone:
            return 400
            
        default: // 모든 경우를 다 처리했으면 경고
            break
        }
    }
}

var someEnum = SomeEnum.iPad
someEnum.price
someEnum = .iPhone
someEnum.price
