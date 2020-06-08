
//
//  ViewController.swift
//  delegatePattern
//
//  Created by 박상신 on 2020/06/08.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

// 어떤식으로 구현할 지는 위임해둠 이런걸 delegatePattern
// delegate : 위임한다. 
//protocol Pname {
//    func test()
//    var myScore: Int { get set }
//}


//navigation controller -> View가 아님 컨트롤러임
//navigation controller가 적용되면 기본적으로 control바가 생기고 back버튼도 자동으로 생긴다.
//navigation bar 에 Title 도 설정 가능
//로그인 뷰 컨트롤러로 접근할 수 있는 부분 전혀 없음(코드로만든게 아니라 storyview로 만들었기 때문)
// 접근할 수 있는 건덕치 -> storyview에 view controller끼리 연결된 화살표 (segue)
// 저거 누르면 화살표의 id 정할 수 있음.


class ViewController: UIViewController, LoginInfo {
    
    @IBOutlet weak var mainLabel: UILabel!

    func load(id: String) {
        // 필요한 내용으로 구현
        mainLabel.text = id
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToLoginVC" {
            let loginVC = segue.destination as! LoginViewController // 스토리보드에서 만든거라 타입을 자동으로 알수 가 없어 casting 해줘야한다.
            loginVC.delegate = self

        }
    }
}


/* next file */ 

//
//  LoginViewController.swift
//  delegatePattern
//
//  Created by 박상신 on 2020/06/08.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

// 실제 구현할 건 사용할 곳에서
protocol LoginInfo {
    func load(id: String)
}

class LoginViewController: UIViewController {
    
    var delegate: LoginInfo? // 옵셔널 상태로 해놔야함
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Viewcontroller에서 뭐 했을 때마다 할 것
    @IBAction func textEditing(_ sender: UITextField) {
        delegate?.load(id: sender.text ?? "" ) // 구현부분을 만들지 않으면 아무런 동작을 하지 않음. nil상태
    }
    
}

