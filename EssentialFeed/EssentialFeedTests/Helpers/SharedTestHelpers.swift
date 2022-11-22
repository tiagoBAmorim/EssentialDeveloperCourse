//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by tamorim on 09/09/2022.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any Error", code: 1)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}

func makeItemJSON(_ items: [[String: Any]]) -> Data {
    let json = ["items": items]
    return try! JSONSerialization.data(withJSONObject: json)
}

extension HTTPURLResponse {
    convenience init(statusCode: Int) {
        self.init(url: anyURL(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
    }
}
