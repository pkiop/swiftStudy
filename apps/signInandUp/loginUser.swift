//
//  loginUser.swift
//  signin
//
//  Created by 박상신 on 2020/06/15.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit


// singleton 인스턴스가 한번 생성되면 계속 유지되서 같은값을 나오게 하는 형태
// 앱이 종료되면 사라짐
class User {
    static let shared = User() //
    var info = LoginUser()
    
    // 외부에서 초기화 못하게
    private init() {
        
    }
}

class Test {
    func test() {
        var user1 = User.shared.info // 이렇게 하면 instance 공유
        var user2 = User.shared.info
        
    }
}

// Codable 우리가 읽을 수 있는 형태로 decoding 해주는 것
struct LoginUser: Codable {
    init() {
        name = ""
        password = ""
        email = ""
        id = 0
        locations = [LocationModel]()
    }
    // 이렇게 하면 이 구조는 외부에서 접근 못함 -> encapsulation
    struct LocationModel: Codable {
        let city: String?
        let state: String?
    }
    
    let name: String? // 안줄 가능성도 있기 때문에 옵셔널로
    let password: String?
    let email: String?
    let id: Int?
    let locations: [LocationModel]?
}
