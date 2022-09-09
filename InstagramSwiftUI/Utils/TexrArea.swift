//
//  TexrArea.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 07-09-22.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(UIColor.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            TextEditor(text: $text)
                .padding(4)
        }
    }
}
