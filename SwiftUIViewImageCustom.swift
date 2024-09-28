//
//  SwiftUIViewImageCustom.swift
//  primerAppSwiftUI
//
//  Created by Jesus Alberto Diaz Dominguez on 25/09/24.
//

import SwiftUI

struct ImageViewCustom: View {
    var body: some View {
        VStack {
            Image("bicho", bundle: nil)
                .resizable()
                .padding()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 2))
            .shadow(radius: 10)
        }
    }
}

#Preview {
    ImageViewCustom()
}
