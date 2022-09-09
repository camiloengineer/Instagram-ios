//
//  Extensions.swift
//  InstagramSwiftUI
//
//  Created by Camilo Gonzalez on 30-08-22.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
