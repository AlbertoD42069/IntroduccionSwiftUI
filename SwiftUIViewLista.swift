//
//  SwiftUIViewLista.swift
//  primerAppSwiftUI
//
//  Created by Jesus Alberto Diaz Dominguez on 26/09/24.
//

import SwiftUI

final class PeronsaModelData : ObservableObject {
    @Published var personas = [Person(id: 0, nombre: "alberto", edad: "28", perfil: Image(systemName: "person"), ciudad: "villahermosa", status: true),Person(id: 1, nombre: "jesus", edad: "30", perfil: Image(systemName: "person.fill"), ciudad: "centro", status: false)]
}

struct SwiftUIViewLista: View {
    
    @EnvironmentObject var personaData: PeronsaModelData
    
    //variables para que la interfaz sepa cuando repintarse
    //Propiedad State
    @State private var showStatus = false
    //listado segun favoritos o todos los de la lista
    private var filterPerson: [Person] {
        return personaData.personas.filter { persona in
            return !showStatus || persona.status
        }
    }
    var body: some View {
        NavigationView {
        VStack {
            //acceder a datos de forma mutable del toggle
            Toggle(isOn: $showStatus, label: {
                Text("mostrar favoritos")
            }).padding()
            
                //cambio de valor de una variable, que omplica un repintado de pantalla
                List(filterPerson, id: \.id) { persona in
                    NavigationLink(destination: SwiftUIViewDetallesList(persona: persona, favorito: $personaData.personas[persona.id].status)) {
                        SwiftUIViewList(persona: persona)
                    }
                }
            }.navigationTitle("Personas")
        }
    }
}

#Preview {
    SwiftUIViewLista().environmentObject(PeronsaModelData())
}
