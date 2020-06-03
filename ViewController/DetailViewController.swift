//
//  DetailViewController.swift
//  LifeCycleVC
//
//  Created by 박상신 on 2020/06/04.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // 화면이 연결된 시점 (화면 나오는 건 아직 멀었음)
    // 호출 될수도 안될수도
    // 안되는 경우는 viewcontroller를 아이폰 모양(interface builder) 나오는 ui가 아닌 코드로 (let testVC = UIViewController() ) 등으로 호출할 때.
    // 이렇게 해도 인자로 Nib관련 것을 주면 호출된다.
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib") // 나올수도, 안나올수도, 한번만호출
    }
    
    //화면 나올 준비를 한 상태
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad") // 한번만 호출
    }
    
    // 화면 나오기 직전. 그 때 뭐 해야할 게 있으면 작성하는 코드
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    deinit {
        print("완전히 메모리에서 해제됨") // 화면 나갔는데 이게 호출 안되면 어딘가에서 잡고있다는 뜻 
    }
}
