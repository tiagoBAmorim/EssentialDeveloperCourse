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
