//
//  Root.swift
//  Application
//
//  Created by Andrew McKnight on 3/1/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Foundation

// Root abstractions.

public protocol Architecture {}
public protocol Application {
    func start() -> UIWindow
}

// Things every application has.

public protocol Data {}
public protocol Logic {}
