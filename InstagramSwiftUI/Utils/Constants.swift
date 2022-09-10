//
//  Constants.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 04-09-22.
//

import Firebase

let COLLECTION_USERS = Firestore.firestore().collection("users")
let COLLECTION_FOLLOWERS = Firestore.firestore().collection("followers")
let COLLECTION_FOLLOWING = Firestore.firestore().collection("following")
let COLLECTION_POSTS = Firestore.firestore().collection("post")
let COLLECTION_NOTIFICATIONS = Firestore.firestore().collection("notifications")
