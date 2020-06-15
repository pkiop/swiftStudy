//
//  signUpViewController.swift
//  signin
//
//  Created by 박상신 on 2020/06/14.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SignUp.layer.cornerRadius = SignUp.bounds.size.height / 2
        SignUp.layer.borderWidth = 1
        SignUp.layer.borderColor = UIColor.blue.cgColor
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var SignUp: UIButton!
    
    @IBAction func SignUpApiCall(_ sender: Any) {
        let params = [
            "name" : userName.text ?? "",
            "password" : password.text ?? "",
            "email" : email.text ?? ""
        ]
        
        // HTTP Method -> Post
        // query => body 에 보내는 방식
        // GET => URL + query
        
        if let url = URL(string: "http://localhost:3000/loginUsers") {
            var request = URLRequest.init(url: url)
            request.httpMethod = "POST"
            request.httpBody = params.queryString.data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                //
                
                guard let data = data else {
                    //alert 해주면 좋다.
                    return
                }
                do {
                    let decoder = JSONDecoder()
                    let user = try decoder.decode(LoginUser.self, from: data)
                    
                    User.shared.info = user
                    
                    // self.dismiss(animated: true, completion: nil) // 내리기 error남..
                    
                    NotificationCenter.default.post(name: NSNotification.Name.init("UserInfoLoad"), object: nil)

                    
                } catch {
                    print("Sign up Error \(error)")
                }
            }.resume() // resume해야 실행된다.
        }
    }
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
