//
//  Landmark.swift
//  landmarks
//
//  Created by Sandeep Kulkarni on 09/07/25.
//
import SwiftUI
import CoreLocation

struct Landmark : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state:String
    var description:String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
