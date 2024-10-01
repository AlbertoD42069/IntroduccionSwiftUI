//
//  SwiftUIViewDetallesList.swift
//  primerAppSwiftUI
//
//  Created by Jesus Alberto Diaz Dominguez on 26/09/24.
//

import SwiftUI

struct SwiftUIViewDetallesList: View {
    var persona: Person
    
    //valor publico que repinta vista a partir de una vista padre a una hija
    @Binding var favorito : Bool
    var body: some View {
        VStack {
            persona.perfil
                .resizable()
                .frame(width: 200,height: 200)
                .shadow(radius: 5)
            HStack {
                Text(persona.nombre).font(.largeTitle)
                Button {
                    favorito.toggle()
                } label: {
                    if favorito {
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    }
                    else {
                        Image(systemName: "star").foregroundColor(.black)
                    }
                }
            }
            Text(persona.edad).font(.title)
            Text(persona.ciudad).font(.title)
        }
        Spacer()
            .padding()
    }
}

#Preview {
    SwiftUIViewDetallesList(persona: Person(id: 0, nombre: "jesis", edad: "28", perfil: Image(systemName: "circle"), ciudad: "villa", status: true), favorito: .constant(false))
}
