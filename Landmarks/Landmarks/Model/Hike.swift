//
//  Hike.swift
//  Landmarks
//
//  Created by Doogie on 5/13/24.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var fomatter = LengthFormatter()
    
    var distanceText: String {
        Hike.fomatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        
    }
}
