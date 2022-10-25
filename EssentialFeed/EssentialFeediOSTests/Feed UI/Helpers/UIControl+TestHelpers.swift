//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by tamorim on 25/10/2022.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
