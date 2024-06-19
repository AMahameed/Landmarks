//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State var landmarkVM = LandmarkViewModel()
    
    var body: some Scene {
        WindowGroup {
            LandmarkHome()
                .environment(landmarkVM)
        }
    }
}
