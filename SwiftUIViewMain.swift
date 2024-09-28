//
//  SwiftUIViewMain.swift
//  primerAppSwiftUI
//
//  Created by Jesus Alberto Diaz Dominguez on 25/09/24.
//

import SwiftUI

struct SwiftUIViewMain: View {
    var body: some View {
        ScrollView {
            VStack {
                ContentView()
                SwiftUIMapView().frame(height: 300)
                Divider()
                ImageViewCustom()
            }
        }.padding()
    }
}

#Preview {
    SwiftUIViewMain()
}
