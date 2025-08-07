//
//  Architecture.swift
//  Application
//
//  Created by Andrew McKnight on 1/24/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Foundation

public protocol MVC: Architecture {
    var model: Model { get set }
    var view: View { get set }
    var controller: Controller { get set }
}

public protocol MVP: Architecture {
    var model: Model { get set }
    var view: View { get set }
    var presenter: Presenter { get set }
}

public protocol MVVM: Architecture {
    var model: Model { get set }
    var view: View { get set }
    var viewModel: ViewModel { get set }
}

public protocol VIPER: Architecture {
    var view: View { get set }
    var interactor: Interactor { get set }
    var presenter: Presenter { get set }
    var entity: Entity { get set }
    var router: Router { get set }
}
