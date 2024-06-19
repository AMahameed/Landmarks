//
//  Landmark.swift
//  Landmarks
//
//  Created by AbdallahMahameed on 19/06/2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    struct Coordinates: Hashable, Codable {
        var lat: Double
        var long: Double
    }
    
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.lat, longitude: coordinates.long)
    }
}




