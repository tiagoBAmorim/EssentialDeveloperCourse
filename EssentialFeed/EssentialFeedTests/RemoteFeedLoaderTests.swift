//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by tamorim on 17/08/2022.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

    func test_doesNotResquestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        
        XCTAssertNil(client.requestedURL)
    }
}
