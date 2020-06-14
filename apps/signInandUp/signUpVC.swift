

//
//  signUpViewController.swift
//  signin
//
//  Created by 박상신 on 2020/06/14.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SignUp.layer.cornerRadius = SignUp.bounds.size.height / 2
        SignUp.layer.borderWidth = 1
        SignUp.layer.borderColor = UIColor.blue.cgColor
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var SignUp: UIButton!
    
    @IBAction func popVC(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
