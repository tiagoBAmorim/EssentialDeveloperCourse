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
        let (_, view) = makeSUT()
        _ = FeedImagePresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
    }
    
    
    //MARK: - Helpers
    
    private func makeSUT(file: StaticString = #file, line: UInt = #line) -> (sut: FeedImagePresenter, view: ViewSpy) {
        let view = ViewSpy()
        let sut = FeedImagePresenter(view: view)
        trackForMemoryLeaks(view, file: file, line: line)
        trackForMemoryLeaks(sut, file: file, line: line)
        return (sut, view)
    }
    
    class ViewSpy {
        let messages = [Any]()
    }
}
