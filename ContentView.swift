//
//  ContentView.swift
//  primerAppSwiftUI
//
//  Created by Jesus Alberto Diaz Dominguez on 24/09/24.
//

import SwiftUI

struct TextoImprimir {
    var textoOne = "Hellom, world!"
}

struct ContentView: View {
    
    var textoCustom = TextoImprimir()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(textoCustom.textoOne)
            Text("hola de nuevo")
            Spacer()
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Button("presionar") {
                print("hola de nuevo")
            }
            Spacer()

            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Button("presionar") {
                print("hola de nuevo")
            }
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Button("presionar") {
                print("hola de nuevo")
            }
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            Button("presionar") {
                print("hola de nuevo")
            }
            
            
            HStack{
                Text("de nuevo hola")
                Text("de nuevo")
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
