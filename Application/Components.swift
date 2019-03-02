//
//  Components.swift
//  Application
//
//  Created by Andrew McKnight on 3/1/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Foundation

// Every architecture has data and view abstractions.

protocol Model: Data {}
protocol Entity: Data {}
protocol View {}

// MVC and VIPER isolate business logic.

protocol Controller: Logic {}
protocol Interactor: Logic {}

// MVVM has a unique abstraction.

protocol ViewModel {}

// MVP and VIPER isolate a presenter.

protocol Presenter {}

// VIPER has a unique abstraction.

protocol Router {}
