//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by tamorim on 17/08/2022.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
