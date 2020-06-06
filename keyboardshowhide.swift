//
//  ViewController.swift
//  keyboardshowhide
//
//  Created by 박상신 on 2020/06/06.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

// 한 파일에 두 클래스가 굉장히 연관이 있으면 한 파일에 작성.
// 아니라면 파일 나눠서 작성을추천
//
//커서가 자동으로  textField 에 올라가고 키보드까지 나오도록 하고 싶다.
class DetailViewController: UIViewController {
   
    @IBOutlet weak var myTextField: UITextField!
    //storyboard와 연결한 코드 끊기
    // 버튼 오른쪽 클릭 -> referencing... 여기 그림에서 X 클릭
    @IBAction func hideMykeyboard(_ sender: Any) {
        myTextField.resignFirstResponder() // 키보드 버튼누르면 숨겨짐
        //myTextField.endEditing(true) //이것도 키보드 내리는 것과 같은 효과
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        //myTextField.becomeFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        super.viewWillAppear(animated)
        myTextField.becomeFirstResponder()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

