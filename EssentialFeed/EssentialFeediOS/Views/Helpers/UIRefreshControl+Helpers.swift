//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by tamorim on 26/10/2022.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
