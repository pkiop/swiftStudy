import UIKit

// Extension - 굉장히 유용한 기능

// 색깔 지정
// main color
// sub color
// text main
// text detail
extension String { // string 에 기능 추가하고 싶으면 이렇게
    
}

class MyScore {
    
}

extension MyScore { // 이미 생성한 myscore에 추가기능 넣고 싶다면
    
}

var titleColor: UIColor!
var descriptionColor: UIColor!

titleColor = UIColor(red: 240/255, green: 30/255, blue: 30/255, alpha: 1)
descriptionColor = UIColor(red: 50/255, green: 250/255, blue: 30/255, alpha: 1)

var subTitleColor: UIColor
subTitleColor = UIColor(red: 50/255, green: 250/255, blue: 30/255, alpha: 1)

//위처럼 하면 힘듬..
extension UIColor {
    var mainRedColor: UIColor {
        return UIColor(red: 240/255, green: 30/255, blue: 30/255, alpha: 1)
    }
    var subGreenColor: UIColor {
        return UIColor(red: 50/255, green: 250/255, blue:30/255, alpha: 1)
    }
}

titleColor = UIColor().mainRedColor
subTitleColor = UIColor().subGreenColor
