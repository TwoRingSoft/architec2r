//
//  Architecture.swift
//  Application
//
//  Created by Andrew McKnight on 1/24/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Foundation

protocol MVC: Architecture, IsolatesData, IsolatesLogic, IsolatesView {}

protocol MVP: Architecture, IsolatesData, IsolatesPresenter, IsolatesView {}

protocol MVVM: Architecture, IsolatesData, IsolatesView {
    var viewModel: ViewModel { get set }
}

protocol VIPER: Architecture, IsolatesData, IsolatesLogic, IsolatesPresenter, IsolatesView {
    var router: Router { get set }
}
