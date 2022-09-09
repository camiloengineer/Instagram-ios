//swfit
//  User.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 04-09-22.
//

import FirebaseFirestoreSwift
import Firebase

struct User: Identifiable, Decodable {
    let username: String
    let email: String
    let profileImageUrl: String
    let fullname: String
    @DocumentID var id: String?
    var isFollowed: Bool? = false
    
    var isCurrentUser: Bool { AuthViewModel.shared.userSession?.uid == id }
}
