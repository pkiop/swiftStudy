//
//  ViewController.swift
//  FirstApp
//
//  Created by 박상신 on 2020/06/11.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelm: UILabel!
    @IBOutlet weak var labels: UILabel!
    @IBOutlet weak var labelms: UILabel!
    @IBOutlet weak var startStopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 초기 설정
        startStopButton.setTitle("Start", for: .normal)
        resetButton.setTitle("Reset", for: .normal)
        labelm.text = "00"
        labels.text = "00"
        labelms.text = "00"
    }
    
    var isStarting = false
    var timer = Timer()
    
    var startTime = 0.0
    var elapsed = 0.0
    
    @IBAction func startStop(_ sender: Any) {
        print(isStarting)
       isStarting = !isStarting
       if isStarting {
           startStopButton.setTitle("Start", for: .normal)
           timer.invalidate()
       } else {
           startTime = Date().timeIntervalSince1970 - elapsed
           timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
           startStopButton.setTitle("Stop", for: .normal)
       }
        
    }
    
    @IBAction func reset(_ sender: Any) {
        elapsed = 0.0
        startTime = Date().timeIntervalSince1970
        labelm.text = "00"
        labels.text = "00"
        labelms.text = "00"
    }
    
    //selector 가져오려면 @objc키워드
    @objc func updateCounter () {
       
        elapsed = Date().timeIntervalSince1970 - startTime

        let date = Date(timeIntervalSince1970: elapsed)
        let df = DateFormatter()
        //df.dateFormat = "yyyy-MM-dd h:m:s:SS"
        df.dateFormat = "mm"
        var datePresent = df.string(from: date)
        labelm.text = datePresent
        df.dateFormat = "ss"
        datePresent = df.string(from: date)
        labels.text = datePresent
        df.dateFormat = "SS"
        datePresent = df.string(from: date)
        labelms.text = datePresent
        
    }
    
}

