//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by tamorim on 17/08/2022.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
