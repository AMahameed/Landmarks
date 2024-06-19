//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinatesLocation: landmark.locationCoordinates)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .withCustomFont(name: Constants.fonts.robotoLight, font: .title)
                
                HStack {
                    Text(landmark.park)
                        .withCustomFont(name: Constants.fonts.robotoLight, font: .subheadline)
                    Spacer()
                    Text(landmark.state)
                        .withCustomFont(name: Constants.fonts.robotoLight, font: .subheadline)
                }
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .withCustomFont(name: Constants.fonts.robotoLight, font: .subheadline)
                
                Text(landmark.description)
                    .withCustomFont(name: Constants.fonts.robotoLight, font: .subheadline)
                
                
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[1])
}
