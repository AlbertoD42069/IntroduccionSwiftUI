//
//  SwiftUIMapView.swift
//  primerAppSwiftUI
//
//  Created by Jesus Alberto Diaz Dominguez on 25/09/24.
//

import SwiftUI
import MapKit

struct SwiftUIMapView: UIViewRepresentable {
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
        let location = CLLocationCoordinate2D(latitude: 17.97922790451264, longitude: -92.92485886327806)
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        uiView.setRegion(region, animated: true)
    }
    
    
    func makeUIView(context: Context) -> some MKMapView {
        MKMapView(frame: .zero)
    }
    
}

#Preview {
    SwiftUIMapView()
}
