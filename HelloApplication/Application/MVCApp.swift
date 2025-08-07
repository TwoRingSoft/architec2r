//
//  MVCApp.swift
//  HelloApplication
//
//  Created by Andrew McKnight on 3/19/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Application
import Foundation

struct MVCApp: MVC {
    var model: Model
    var view: View
    var controller: Controller

    init() {
        let view = AppView()
        let model = AppModel()
        self.model = model
        self.view = view
        controller = AppController(view: view, model: model)
    }
}

extension MVCApp: Application {
    func start() -> UIWindow {
        return controller.start()
    }
}
