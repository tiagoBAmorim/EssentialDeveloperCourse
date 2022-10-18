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
    
    var feedView: FeedView?
    var loadingView: FeedLoadinView?
    
    func didStartLoadingFeed() {
        loadingView?.display(FeedLoadingViewModel(isLoading: true))
    }
    
    func didFinishLoadingFeed(with feed: [FeedImage]) {
        feedView?.display(FeedViewModel(feed: feed))
        loadingView?.display(FeedLoadingViewModel(isLoading: false))
    }
    
    func didFinhishLoadingFeed(with error: Error) {
        loadingView?.display(FeedLoadingViewModel(isLoading: false))
    }
}
