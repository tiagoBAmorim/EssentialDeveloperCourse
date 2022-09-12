//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by tamorim on 12/09/2022.
//

import Foundation

final class FeedCachePolicy {
    private init() {}
    
    private static let calendar = Calendar(identifier: .gregorian)
    
    private static var maxCachedAgeInDays: Int {
        return 7
    }
    
    static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCacheAge = calendar.date(byAdding: .day, value: maxCachedAgeInDays, to: timestamp) else { return false }
        
        return date < maxCacheAge
    }
}
