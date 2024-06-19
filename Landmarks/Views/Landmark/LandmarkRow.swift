//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 0)))
            
            Text(landmark.name)
                .withCustomFont(name: Constants.fonts.sansLight, font: .title)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.green)
            }
                
        }
        .padding(5)
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: LandmarkViewModel().landmarks[0])
        LandmarkRow(landmark: LandmarkViewModel().landmarks[1])
    }
}
