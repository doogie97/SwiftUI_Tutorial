//
//  Landmark.swift
//  Landmarks
//
//  Created by Doogie on 5/11/24.
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
    
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: coordinates.latitude,
                                      longitude: coordinates.latitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var longitude: Double
        var latitude: Double
    }
}
