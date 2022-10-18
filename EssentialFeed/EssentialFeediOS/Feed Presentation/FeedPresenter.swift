//
//  FeedPresenter.swift
//  EssentialFeediOS
//
//  Created by tamorim on 17/10/2022.
//

import EssentialFeed

struct FeedLoadingViewModel {
    let isLoading: Bool
}
protocol FeedLoadinView {
    func display(_ viewModel: FeedLoadingViewModel)
}

struct FeedViewModel {
    let feed: [FeedImage]
}

protocol FeedView {
    func display(_ feed: FeedViewModel)
}

final class FeedPresenter {
    typealias Observer<T> = (T) -> Void
    private let feedLoader: FeedLoader
    
    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    var feedView: FeedView?
    var loadingView: FeedLoadinView?
    
    func loadFeed() {
        loadingView?.display(FeedLoadingViewModel(isLoading: true))
        feedLoader.load { [weak self] result in
            if let feed = try? result.get() {
                self?.feedView?.display(FeedViewModel(feed: feed))
            }
            
            self?.loadingView?.display(FeedLoadingViewModel(isLoading: false))
        }
    }
}
