//
//  TaskToDoApp.swift
//  TaskToDo
//
//  Created by Lucas Hollas on 09/01/23.
//

import SwiftUI

@main
struct TaskToDoApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().eviroment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
