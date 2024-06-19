//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
            
        }, label: {
            Label("Favorite", systemImage: isSet ? "star.fill" : "star" )
                .labelStyle(.iconOnly)
                .foregroundStyle(.green)
        })
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
