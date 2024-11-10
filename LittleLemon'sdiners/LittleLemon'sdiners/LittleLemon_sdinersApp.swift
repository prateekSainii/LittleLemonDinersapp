//
//  LittleLemon_sdinersApp.swift
//  LittleLemon'sdiners
//
//  Created by Prateek Saini on 21/10/24.
//

import SwiftUI

@main
struct LittleLemon_sdinersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MenuItemsView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
