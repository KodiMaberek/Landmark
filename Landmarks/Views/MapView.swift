//
//  MapView.swift
//  Landmarks
//
//  Created by Rodion Akhmedov on 10/9/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_284, longitude: -116.166_686),
                           span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView()
}
