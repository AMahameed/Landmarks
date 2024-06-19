//
//  ContentView.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI

struct Landmark: View {
    
    var body: some View {
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
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Landmark()
}
