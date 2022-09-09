//
//  UserListView.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 30-08-22.
//

import SwiftUI

struct UserListView: View {
    
    @ObservedObject var viewModel: SearchViewModel
    @Binding var searchText: String
    
    var users: [User] {
        return searchText.isEmpty ? viewModel.users : viewModel.filteredUsers(searchText)
    }
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(users) { user in
                    NavigationLink(
                        destination: ProfileView(user: user),
                        label: {
                            UsersCell(user: user)
                                .padding(.leading)
                        })
                }
            }
        }
    }
}
