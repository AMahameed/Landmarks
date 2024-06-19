//
//  Font+Ext.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct CustomFontModifier: ViewModifier {
    let name: String
    let size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.custom(name, size: size))
    }
}

extension Text {
    func withCustomFont(name: String, size: CGFloat) -> some View {
        modifier(CustomFontModifier(name: name, size: size))
    }
}
