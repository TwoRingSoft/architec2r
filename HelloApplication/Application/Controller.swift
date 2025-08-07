//
//  Controller.swift
//  HelloApplication
//
//  Created by Andrew McKnight on 3/19/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Application
import Foundation

struct AppController: Controller {
    var view: AppView
    var model: Model

    func start() -> UIWindow {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let vc = view.getName.controlled()
        window.rootViewController = UINavigationController(rootViewController: vc)
        window.makeKeyAndVisible()
        return window
    }
}
