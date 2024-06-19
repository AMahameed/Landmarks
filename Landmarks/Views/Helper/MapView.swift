//
//  MapView.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinatesLocation: CLLocationCoordinate2D
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinatesLocation,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}
