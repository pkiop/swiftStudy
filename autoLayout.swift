//
//  AppDelegate.swift
//  appDelegate
//
//  Created by 박상신 on 2020/06/08.
//  Copyright © 2020 박상신. All rights reserved.
//

import UIKit

@UIApplicationMain
//앱 종료되거나 내려가거나 했을 때 캐치할 쑤 있는 부분
class AppDelegate: UIResponder, UIApplicationDelegate {

    //didFinishLaunchingWithOptions -> 가장 처음에 시작할 준비가 되어있는 상태. 그 떄 실행되는 최초의 function
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("application")
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // active to inactive state 로 갈 때.
        // 화면이 내려갈 때
        print("화면이 내려갈 때")
    }
    // MARK: UISceneSession Lifecycle
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("화면이 올라갈 때")
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("화면이 올라가 있는 상태")
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        //완전히 진입 했을 때 ( background )
        print("백그라운드 상태")
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    func applicationWillTerminate(_ application: UIApplication) {
        print("앱이 완전 종료") // 이건 앱 꺼지면 연결 끊겨서 출력은 안될 것
    }

}

