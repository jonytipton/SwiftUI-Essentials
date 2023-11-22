//
//  MapView.swift
//  Landmarks
//
//  Created by Jonathan Tipton on 11/22/23.
//

import MapKit
import SwiftUI

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        // Using .constant since a Binding is expected but we do not need the MapView to detect when someone changes the position by interacting with the map
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2
            )
        )
    }
}

#Preview {
    MapView(
        coordinate: CLLocationCoordinate2D(
            latitude: 34.011_286,
            longitude: -116.166_868
        )
    )
}
