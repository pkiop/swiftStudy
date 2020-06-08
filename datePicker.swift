//
//  ViewController.swift
//  datePicker
//
//  Created by 박상신 on 2020/06/08.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentDate = Date()
        
        var dateComponent = DateComponents()
        dateComponent.day = 2 //
        let maxDate = Calendar.current.date(byAdding: dateComponent, to: currentDate)
        datePicker.minimumDate = currentDate // 현재보다 더 이전으로 가지 못함
        datePicker.maximumDate = maxDate // 최대 값이 현재부터 2일까지 됨
    }

    // type UIDatePicker 로 설정
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        print(sender.date.timeIntervalSince1970) // 날짜에따른 숫자값. 
    }
    
}

