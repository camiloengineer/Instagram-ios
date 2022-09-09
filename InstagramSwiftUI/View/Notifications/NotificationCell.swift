//
//  NotificationCell.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 30-08-22.
//

import SwiftUI

struct NotificationCell: View {
    
    @State private var showPostImage = true
    
    var body: some View {
        
        HStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("batman").font(.system(size: 14, weight: .semibold)) +
            Text(" liked one of your post")
                .font(.system(size: 15))
            
            Spacer()
            
            if showPostImage {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            } else {
                Button(action: {}, label: {
                    Text("Follow")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(Color(.white))
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
            
        }.padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}
