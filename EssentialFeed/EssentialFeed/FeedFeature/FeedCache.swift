//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by tamorim on 09/11/2022.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
