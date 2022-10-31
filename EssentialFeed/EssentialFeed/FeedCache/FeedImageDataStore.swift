//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by tamorim on 31/10/2022.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
 }
