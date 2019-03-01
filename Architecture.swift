//
//  Architecture.swift
//  Application
//
//  Created by Andrew McKnight on 1/24/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Foundation

// Root abstraction.

protocol Architecture {}

// Things every application has.

protocol Data {}
protocol Logic {}

// Components of different architectures.

//  Every architecture has data and view components.

protocol Model: Data {}
protocol View {}

//  MVC and VIPER isolate business logic.

protocol Controller: Logic {}
protocol Interactor: Logic {}

//  MVVM has a unique abstraction.

protocol ViewModel {}

//  MVP and VIPER isolate a presenter.

protocol Presenter {}

protocol Entity: Data {}
protocol Router {}

// Characteristics shared between multiple architectures.

protocol IsolatesData {
    associatedtype DataType
    var data: DataType { get set }
}

protocol IsolatesView {
    var view: View { get set }
}

protocol IsolatesPresenter {
    var presenter: Presenter { get set }
}

protocol IsolatesLogic {
    associatedtype LogicType
    var logic: LogicType { get set }
}

// Architectures.

protocol MVC: Architecture, IsolatesData, IsolatesLogic, IsolatesView {}

protocol MVP: Architecture, IsolatesData, IsolatesView, IsolatesPresenter {}

protocol MVVM: Architecture, IsolatesData, IsolatesView {
    var viewModel: ViewModel { get set }
}

protocol VIPER: Architecture, IsolatesData, IsolatesLogic, IsolatesPresenter, IsolatesView {
    var router: Router { get set }
}

// Implementations.

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
