//
//  ViewController.swift
//  guardlet
//
//  Created by 박상신 on 2020/06/06.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var alertLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        alertLable.text = ""
        alertLable.textColor = UIColor.red
    }

    @IBAction func doneLogin(_ sender: Any) {
        // nil 말고 빈 스트링일 때 처리하기 위해 .count>0처리
        guard let username = usernameField.text, username.count > 0 else {
            alertLable.text = "username is Empty"
            return // 가져오지 못했을 때 처리하는 코드
        }
        //user nane let 으로 -> 함수내 전역변숴럼 사용가능
        
        guard let password = passwordField.text, password.count > 0 else {
            alertLable.text = "password is Empty"
            return // 가져오지 못했을 때 처리하는 코드
        }
        
        if username == "pkiop" && password == "abc" {
            alertLable.text = "login Success"
        }
        else {
            alertLable.text = "login Fail"
        }
    }
    
}

