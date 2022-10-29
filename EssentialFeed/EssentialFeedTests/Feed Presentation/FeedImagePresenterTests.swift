//
//  FeedImagePresenterTests.swift
//  EssentialFeedTests
//
//  Created by tamorim on 29/10/2022.
//

import XCTest

class FeedImagePresenter {
    
    init(view: Any) {
        
    }
}


class FeedImagePresenterTests: XCTestCase {
    
    func test_init_doesNotSentMessageToView() {
        let view = ViewSpy()
        _ = FeedImagePresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    
    //MARK: - Helpers
    
    
    class ViewSpy {
        let messages = [Any]()
    }
}
