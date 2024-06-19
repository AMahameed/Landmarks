//
//  LandmarkHome.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct LandmarkHome: View {
    
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .withCustomFont(name: Constants.fonts.robotoLight, font: .title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .withCustomFont(name: Constants.fonts.robotoLight, font: .subheadline)
                    Spacer()
                    Text("California")
                        .withCustomFont(name: Constants.fonts.robotoLight, font: .subheadline)
                }
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .withCustomFont(name: Constants.fonts.robotoLight, font: .subheadline)
        
                Text("Descriptive text goes here.")
                    .withCustomFont(name: Constants.fonts.robotoLight, font: .subheadline)
                
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

#Preview {
    LandmarkHome()
}
