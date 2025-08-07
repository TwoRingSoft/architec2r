//
//  AppDelegate.swift
//  HelloApplication
//
//  Created by Andrew McKnight on 3/19/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Application
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private lazy var mvcApp = MVCApp()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = mvcApp.start()
        return true
    }
}

