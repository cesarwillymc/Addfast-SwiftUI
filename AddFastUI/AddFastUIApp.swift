//
//  AddFastUIApp.swift
//  AddFastUI
//
//  Created by Cesar Mamani on 8/07/21.
//

import SwiftUI

@main
struct AddFastUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
