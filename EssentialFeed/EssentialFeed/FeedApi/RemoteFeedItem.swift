//
//  RemoteFeedItems.swift
//  EssentialFeed
//
//  Created by tamorim on 08/09/2022.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
