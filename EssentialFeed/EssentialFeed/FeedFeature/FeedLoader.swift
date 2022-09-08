//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by tamorim on 17/08/2022.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
