//
//  AppDelegate.swift
//  ASMT19_11_26
//
//  Created by SEONGJUN on 2019/11/26.
//  Copyright © 2019 Seongjun Im. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if #available(iOS 13.0, *){
            // available안쓰면 iOS 13에서 실행할때는 여기 else문이 실행되고 또 sceneDelegate에 있는 같은 코드를 중복 실행하게된다. 그래서 이 구문을 써서 13버젼에서는 실행 안되게한다
        }
        else{
            window = UIWindow(frame: UIScreen.main.bounds) // x, y, 0, 0
            window?.backgroundColor = .white
            window?.rootViewController = ViewController()
            window?.makeKeyAndVisible()
        }
        
        return true
    }

//    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }


}

