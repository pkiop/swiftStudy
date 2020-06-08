//
//  ViewController.swift
//  Alert_Controller
//
//  Created by 박상신 on 2020/06/08.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func displayAlert(_ sender: Any) {
        // 함수만들고괄호안에서 esc누르면 넣을 수 있는 목록 나옴
        let alert = UIAlertController(title: nil, message: "선택하세요", preferredStyle: /*.alert*/ .actionSheet)
        let delete = UIAlertAction(title: "삭제",  style: .default, handler: nil)
        let save = UIAlertAction(title: "저장", style: .default) {
            (action) in print("save")//저장버튼을 눌렀을 대 실행할 코드
        }
        let cancel = UIAlertAction(title: "취소", style: /*.cancel*/ .destructive, handler: nil)
        
        alert.addAction(delete)
        alert.addAction(save)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

