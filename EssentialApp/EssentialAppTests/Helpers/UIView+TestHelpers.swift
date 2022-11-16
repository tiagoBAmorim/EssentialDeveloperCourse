//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by tamorim on 16/11/2022.
//

import UIKit

 extension UIView {
     func enforceLayoutCycle() {
         layoutIfNeeded()
         RunLoop.current.run(until: Date())
     }
 }
