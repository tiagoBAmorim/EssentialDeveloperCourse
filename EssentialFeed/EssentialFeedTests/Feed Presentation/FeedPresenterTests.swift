//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by tamorim on 27/10/2022.
//

import XCTest

final class FeedPresenter {
     init(view: Any) {

     }
 }

 class FeedPresenterTests: XCTestCase {

     func test_init_doesNotSendMessagesToView() {
         let view = ViewSpy()

         _ = FeedPresenter(view: view)

         XCTAssertTrue(view.messages.isEmpty, "Expected no view messages")
     }

     
     // MARK: - Helpers
     private class ViewSpy {
         let messages = [Any]()
     }
 }
