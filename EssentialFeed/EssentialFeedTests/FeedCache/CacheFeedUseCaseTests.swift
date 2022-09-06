//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by tamorim on 06/09/2022.
//

import XCTest

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeletesCacheUponCreation() {
        let store = FeedStore()
        let _ = LocalFeedLoader(store: store)
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}
