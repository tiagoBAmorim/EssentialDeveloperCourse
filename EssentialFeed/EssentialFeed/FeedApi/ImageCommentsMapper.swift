//
//  ImageCommentsMapper.swift
//  EssentialFeed
//
//  Created by tamorim on 21/11/2022.
//

import Foundation

final class ImageCommentsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.isOK,
              let root = try? JSONDecoder().decode(Root.self, from: data)
        else {
            throw RemoteImageCommentsLoader.Error.invalidData
        }
        
        return root.items
    }
}
