//
//  ViewController.swift
//  noSwiftUIyesStroyboard
//
//  Created by 박상신 on 2020/06/04.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func unwindMainVC(seque: UIStoryboardSegue) {
        
    }

    
    @IBOutlet weak var but: UIImageView!
    @IBOutlet weak var butCentorY: NSLayoutConstraint!
    @IBOutlet weak var butCentorX: NSLayoutConstraint!
    //화면이 준비가 되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Xcode multicursor 단축키 : shift + control + click
        let left = UISwipeGestureRecognizer(target: self, action: #selector(move))
        left.direction = .left
        
        let right = UISwipeGestureRecognizer(target: self, action: #selector(move))
        right.direction = .right
        
        let up = UISwipeGestureRecognizer(target: self, action: #selector(move))
        up.direction = .up
        
        let down = UISwipeGestureRecognizer(target: self, action: #selector(move))
        down.direction = .down
        
        // but.addGestureRecognizer(left) 이렇게 설정. 화면 어디서든 하고 싶으면 아래처럼
        self.view.addGestureRecognizer(left)
        self.view.addGestureRecognizer(right)
        self.view.addGestureRecognizer(up)
        self.view.addGestureRecognizer(down)
        //여기 까지 하면 제스쳐 인식까지. 어떻게 행동해야 하는지는 다시 storyboard로 가서
        //이미지 클릭 -> size inspector -> align centor x 더블클릭 -> 왼쪽 ViewController Scene에 Constrains 에 CentorX, Y 드래그앤드롭해서 넣음
        
        //추가기능
        let tap = UITapGestureRecognizer(target: self, action: #selector(move))
        self.view.addGestureRecognizer(tap)
    }
    
    //selector 는 @objc라는 것을 설정해야 한다.
    @objc func move(sender: UIGestureRecognizer) {
        // as? 타입이 맞는지 check하는 것
        if let swife = sender as? UISwipeGestureRecognizer { // old 문법
        //if sender is UIGestureRecognizer {
            switch swife.direction {
            //case UISwipeGestureRecognizer.Direction.up: 타입 알기 때문에. 이건 정석 아래는 생략가능
            case .up:
                butCentorY.constant = butCentorY.constant - 50
            case .down:
                butCentorY.constant = butCentorY.constant + 50
            case .right:
                butCentorX.constant = butCentorX.constant + 50
            case .left:
                butCentorX.constant = butCentorX.constant - 50
            default:
                break;
            }
            UIView.animate(withDuration: 0.3){
                self.view.layoutIfNeeded()
            }
        }
        
        
        if let tap = sender as? UITapGestureRecognizer  {
            butCentorX.constant = 0
            butCentorY.constant = 0
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
        print("butCentorX : \(butCentorX.constant), \(butCentorY.constant)")

    }
    
    
}

