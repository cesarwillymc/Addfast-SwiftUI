//
//  ContentView.swift
//  AddFastUI
//
//  Created by Cesar Mamani on 8/07/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    var body: some View {
        TabView{
            Text("Inicio").padding().tabItem {
                Image("add").aspectRatio(1/1, contentMode: .fill).foregroundColor(Color.green)
                Text("Inicio")
            }.tag(1)
            Text("Postulaciones").padding()
                .tabItem {
                    VStack{
                        Image( "group")
                        Text("Postulaciones")
                        
                    }
                }.tag(2)
            Text("Anuncios").padding()
                .tabItem() {
                    
                    Image("suitcase").resizable().aspectRatio(1/1, contentMode: .fill)
                    Text("Anuncios")
                }.tag(3)
            Text("Perfil").padding()
                .tabItem {
                    Image("user").aspectRatio(1/1, contentMode: .fill)
                    Text("Perfil")
                }.tag(4)
            
            
        }.accentColor(.orange)
        
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
