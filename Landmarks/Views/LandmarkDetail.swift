//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(LandmarkViewModel.self) var landmarkVM
    var landmark: Landmark
    
    var landmarkIndex: Int {
        landmarkVM.landmarks.firstIndex(where: { $0.id == landmark.id }) ?? 0
    }
    
    var body: some View {
        @Bindable var landmarkVM = landmarkVM
        
        ScrollView {
            MapView(coordinatesLocation: landmark.locationCoordinates)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .withCustomFont(name: Constants.fonts.robotoLight, font: .title)
                    
                    FavoriteButton(isSet: $landmarkVM.landmarks[landmarkIndex].isFavorite)
                }
                
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
    LandmarkDetail(landmark: LandmarkViewModel().landmarks[0])
        .environment(LandmarkViewModel())
}
