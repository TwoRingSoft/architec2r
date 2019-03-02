//
//  Characteristics.swift
//  Application
//
//  Created by Andrew McKnight on 3/1/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Foundation

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
