// Initialization / Deinitialization
// 초기화

// 인스턴스 생성

class Score {
    var homeTeamScore: Int // 이렇게 해놓으면 무조건 init에서 값 선정
    var awayTeamScore: Int? // optional 하면 없어도 되긴 함
    
    func totalScore() -> Int {
        return homeTeamScore + awayTeamScore!
    }
    
    //init 치고 enter
    init() {
        print("init")
        homeTeamScore = 5
        awayTeamScore = 10
    }
    
    deinit {
        print("deinit")
    }
}

var ss: Score? = Score() // 이게 인스턴스 생성하겠다.
ss = nil // 메모리 해제시키는 것 
