//
//  FeedCellViewModel.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 08-09-22.
//

import SwiftUI

class FeedCellViewModel: ObservableObject {
    @Published var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    func like() {
        print("Like post")
    }
    
    func unlike() {
        print("Unlike post")
    }
    
    func checkUserLikedPost() {
        
    }
}
