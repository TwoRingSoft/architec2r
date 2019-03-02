//
//  Application.swift
//  Application
//
//  Created by Andrew McKnight on 3/1/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Foundation

struct MVCApp: MVC {
    var data: Model
    var view: View
    var logic: Controller
}

struct MVVMApp: MVVM {
    var data: Model
    var view: View
    var viewModel: ViewModel
}

struct MVPApp: MVP {
    var data: Model
    var view: View
    var presenter: Presenter
}

struct VIPERApp: VIPER {
    var view: View
    var logic: Interactor
    var presenter: Presenter
    var data: Entity
    var router: Router
}
