//
//  UsersCell.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 30-08-22.
//

import SwiftUI
import Kingfisher

struct UsersCell: View {
    
    let user: User
    
    var body: some View {
        HStack {
            KFImage(URL(string: user.profileImageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .cornerRadius(24)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14))
            }
            
            Spacer()
        }
    }
}
