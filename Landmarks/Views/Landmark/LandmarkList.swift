//
//  LandmarkList.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(LandmarkViewModel.self) var landmarkVM
    @State private var showFavirotsOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarkVM.landmarks.filter { landmark in
            (!showFavirotsOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List() {
                Toggle(isOn: $showFavirotsOnly, label: {
                    Text("Favirotes Only")
                })

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
            .animation(.easeInOut(duration: 0.3), value: filteredLandmarks)
            
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(LandmarkViewModel())
}
