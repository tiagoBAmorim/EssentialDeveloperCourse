//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by tamorim on 25/10/2022.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
