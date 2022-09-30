//
//  CleannyRefactoringApp.swift
//  CleannyRefactoring
//
//  Created by 종건 on 2022/10/01.
//

import SwiftUI

@main
struct CleannyRefactoringApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
