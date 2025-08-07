//
//  View.swift
//  HelloApplication
//
//  Created by Andrew McKnight on 3/19/19.
//  Copyright © 2019 Two Ring Software. All rights reserved.
//

import Application
import Foundation

protocol Controllable {
    func controlled() -> UIViewController
}
extension UIView: Controllable {
    func controlled() -> UIViewController {
        let vc = UIViewController(nibName: nil, bundle: nil)

        vc.view.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: vc.view.layoutMarginsGuide.leadingAnchor),
            trailingAnchor.constraint(equalTo: vc.view.layoutMarginsGuide.trailingAnchor),
            topAnchor.constraint(equalTo: vc.view.layoutMarginsGuide.topAnchor),
            bottomAnchor.constraint(equalTo: vc.view.layoutMarginsGuide.bottomAnchor),
            ])

        return vc
    }
}

struct AppView: View {
    let getName: GetName = GetName(frame: .zero)
    let sayHello: SayHello = SayHello(frame: .zero)
}

extension AppView {
    class GetName: UIView {
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = .red
        }

        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }

    class SayHello: UIView {
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = .green
        }

        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
