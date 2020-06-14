//
//  SigninViewController.swift
//  signin
//
//  Created by 박상신 on 2020/06/14.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class SigninViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // button rounding 처리
        buttonSignIn.layer.cornerRadius = buttonSignIn.bounds.size.height / 2
        buttonSignIn.layer.borderWidth = 1
        buttonSignIn.layer.borderColor = UIColor.blue.cgColor
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func moveToSignUp(_ sender: Any) {
        print("moveToSignUp")
           let signUpVC = UIStoryboard(name: "signUpVC", bundle: nil).instantiateViewController(withIdentifier: "signUpVC")
           self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    @IBOutlet weak var buttonSignIn: UIButton!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
