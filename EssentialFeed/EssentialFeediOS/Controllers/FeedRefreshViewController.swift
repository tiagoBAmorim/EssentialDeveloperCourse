//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by tamorim on 14/10/2022.
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
    func didRequestRefresh()
}

final class FeedRefreshViewController: NSObject, FeedLoadinView {
    private(set) lazy var view = loadView()
    
    private let delegate: FeedRefreshViewControllerDelegate
    
    init(delegate: FeedRefreshViewControllerDelegate) {
        self.delegate = delegate
    }
    
    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
    }
    
    @objc func refresh() {
        delegate.didRequestRefresh()
    }
    
    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
