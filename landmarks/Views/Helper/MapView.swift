//
//  MapView.swift
//  landmarks
//
//  Created by Sandeep Kulkarni on 09/07/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center:coordinate,
            span: MKCoordinateSpan (
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D (
        latitude: 17.45052419115717,
        longitude:78.39482547384378
    ))
}
