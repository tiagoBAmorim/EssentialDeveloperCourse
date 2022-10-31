//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by tamorim on 31/10/2022.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
