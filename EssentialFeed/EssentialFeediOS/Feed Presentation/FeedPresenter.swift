//
//  FeedPresenter.swift
//  EssentialFeediOS
//
//  Created by tamorim on 17/10/2022.
//

import EssentialFeed

protocol FeedLoadinView {
    func display(_ viewModel: FeedLoadingViewModel)
}

protocol FeedView {
    func display(_ feed: FeedViewModel)
}

final class FeedPresenter {
    private let feedView: FeedView
    private let loadingView: FeedLoadinView
    
    init(feedView: FeedView, loadingView: FeedLoadinView) {
        self.feedView = feedView
        self.loadingView = loadingView
    }
    
    func didStartLoadingFeed() {
        loadingView.display(FeedLoadingViewModel(isLoading: true))
    }
    
    func didFinishLoadingFeed(with feed: [FeedImage]) {
        feedView.display(FeedViewModel(feed: feed))
        loadingView.display(FeedLoadingViewModel(isLoading: false))
    }
    
    func didFinhishLoadingFeed(with error: Error) {
        loadingView.display(FeedLoadingViewModel(isLoading: false))
    }
}
