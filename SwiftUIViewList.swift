//
//  SwiftUIViewList.swift
//  primerAppSwiftUI
//
//  Created by Jesus Alberto Diaz Dominguez on 26/09/24.
//

import SwiftUI

struct SwiftUIViewList: View {
    var persona: Person
    var body: some View {
        HStack {
            persona.perfil
                .resizable()
                .frame(width: 80, height: 80)
            VStack(alignment: .leading) {
                Text(persona.nombre).font(.title)
                Text(persona.edad)
                Text(persona.ciudad)
                
            }
            Spacer()
            //con else en el if
            /*if persona.status {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            } else {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.gray)
            }*/
            
            //sin else en el if
            if persona.status {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            }
        }.padding()
    }
}

#Preview {
    SwiftUIViewList(persona: Person(id: 1, nombre: "alberto", edad: "28", perfil: Image(systemName: "person"), ciudad: "villahermosa", status: true)).previewLayout(.fixed(width: 100, height: 60))
}
