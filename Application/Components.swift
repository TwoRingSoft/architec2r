//
//  Components.swift
//  Application
//
//  Created by Andrew McKnight on 3/1/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Foundation

// Every architecture has data and view abstractions.

public protocol Model: Data {}
public protocol Entity: Data {}

public protocol View {}

// MVC and VIPER isolate business logic.

public protocol Controller: Logic {
    func start() -> UIWindow
}
public protocol Interactor: Logic {}

// MVVM has a unique abstraction.

public protocol ViewModel {}

// MVP and VIPER isolate a presenter.

public protocol Presenter {}

// VIPER has a unique abstraction.

public protocol Router {}
