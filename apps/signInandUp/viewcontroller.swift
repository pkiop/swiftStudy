//
//  ViewController.swift
//  signin
//
//  Created by 박상신 on 2020/06/14.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // storyboard file 은 보기만 해도 수정된다.
    // 그래서 다른사람이 보기만 해도 conflict 가능 성 있음.
    // 그래서 storyboard 하나에 여러 view controller 넣지 않는다. 
    @IBOutlet weak var userInfoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(infoReLoad), name: NSNotification.Name.init("UserInfoLoad"), object: nil)
    }
    
    @objc func infoReLoad() {
        DispatchQueue.main.async {
            self.userInfoLabel.text = User.shared.info.email
        }
    }
    

    @IBAction func moveToSignin(_ sender: Any) {
        let signInVC = UIStoryboard(name: "SigninVC", bundle: nil).instantiateViewController(withIdentifier: "naviSignIn")
        self.present(signInVC, animated: true, completion: nil)
    }
    
   

}

