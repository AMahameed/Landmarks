//
//  Font+Ext.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct CustomFontAndSizeModifier: ViewModifier {
    let name: String
    let size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .font(.custom(name, size: size))
    }
}

struct CustomFontModifier: ViewModifier {
    let name: String
    let font: Font
    
    func body(content: Content) -> some View {
        content
            .font(.custom(name, size: font == .title ? FontsWeight.title.rawValue : FontsWeight.subHeadline.rawValue))
    }
}

extension Text {
    func withCustomFontAndSize(name: String, size: CGFloat) -> some View {
        modifier(CustomFontAndSizeModifier(name: name, size: size))
    }
    
    func withCustomFont(name: String, font: Font) -> some View {
        modifier(CustomFontModifier(name: name, font: font))
    }
}

enum FontsWeight: CGFloat {
    case title = 32.0
    case subHeadline = 20.0
}
