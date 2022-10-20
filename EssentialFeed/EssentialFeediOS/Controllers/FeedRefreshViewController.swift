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

final class FeedRefreshViewController: NSObject, FeedLoadingView {
    @IBOutlet private var view: UIRefreshControl?
    
    var delegate: FeedRefreshViewControllerDelegate?
    
    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view?.beginRefreshing()
        } else {
            view?.endRefreshing()
        }
    }
    
    @IBAction func refresh() {
        delegate?.didRequestRefresh()
    }
}
