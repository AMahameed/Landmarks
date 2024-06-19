//
//  LandmarkHome.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct LandmarkHome: View {
    
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    LandmarkHome()
        .environment(LandmarkViewModel())
}
