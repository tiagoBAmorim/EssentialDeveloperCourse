//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by tamorim on 19/10/2022.
//

import Foundation

struct FeedImageViewModel<Image> {
     let description: String?
     let location: String?
     let image: Image?
     let isLoading: Bool
     let shouldRetry: Bool

     var hasLocation: Bool {
         return location != nil
     }
 }
