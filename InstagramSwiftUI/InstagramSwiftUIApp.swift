//
//  InstagramSwiftUIApp.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 29-08-22.
//

import SwiftUI
import Firebase

@main
struct InstagramSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel.shared)
        }
    }
}
