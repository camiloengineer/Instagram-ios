//
//  AuthViewModel.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 01-09-22.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    
    @Published var userSession: Firebase.User?
    @Published var currentUser: User?
    
    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
        fetchUser()
    }
    
    func login(withEmail email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Login failed \(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else { return }
            self.userSession = user
            self.fetchUser()
        }
    }
    
    func register(withEmail email: String, password: String, image: UIImage?, fullname: String, username: String) {
        
        guard let image = image else { return }
        
        ImageUploader.uploadImage(image: image, type: .profile) { imageUrl in
            
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                
                guard let user = result?.user else { return }
                print("Successfully registered user...")
                
                let data = ["email": email,
                            "username": username,
                            "fullname": fullname,
                            "profileImageUrl": imageUrl,
                            "uid": user.uid]
                
                COLLECTION_USERS.document(user.uid).setData(data) { _ in
                    print("Successfully uploaded user data...")
                    self.userSession = user
                }
            }
        }
    }
    
    func signout() {
        self.userSession = nil
        try? Auth.auth().signOut()
    }
    
    func resetPassword() {
        print("Reset Password")
    }
    
    func fetchUser() {
        guard let uid = userSession?.uid else { return }
        COLLECTION_USERS.document(uid).getDocument { snapshot, _ in
            guard let data = snapshot?.data() else { return }
            
            let user = User(username: data["username"] as! String, email: data["email"] as! String, profileImageUrl: data["profileImageUrl"] as! String, fullname: data["fullname"] as! String, id: snapshot?.documentID)
            self.currentUser = user
            self.fetchUser()
        }
    }
}
