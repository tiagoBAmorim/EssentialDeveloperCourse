//
//  LocalFeedImageDataLoaderTests.swift
//  EssentialFeedTests
//
//  Created by tamorim on 31/10/2022.
//

import XCTest

class LocalFeedImageLoader {
    init(store: Any) {
        
    }
}

final class LocalFeedImageDataLoaderTests: XCTestCase {

    func test_init_doesNotMessageStoreUponCreation() {
        let (_, store) = makeSUT()
        
        XCTAssertTrue(store.receivedMessages.isEmpty)
    }
    
    //MARK: - Helpers
    
    private func makeSUT(currentDate: @escaping () -> Date = Date.init, file: StaticString = #filePath, line: UInt = #line) -> (sut: LocalFeedImageLoader, store: FeedStoreSpy) {
        let store = FeedStoreSpy()
        let sut = LocalFeedImageLoader(store: store)
        
        trackForMemoryLeaks(sut, file: file, line: line)
        trackForMemoryLeaks(store, file: file, line: line)
        
        return (sut, store)
    }
    
    private class FeedStoreSpy {
        let receivedMessages = [Any]()
    }
}
