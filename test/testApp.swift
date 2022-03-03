//
//  testApp.swift
//  test
//
//  Created by kitano hajime on 2022/02/11.
//

import SwiftUI

@main
struct testApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            BasicView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
