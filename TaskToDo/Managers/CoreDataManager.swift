//
//  CoreDataManager.swift
//  TaskToDo
//
//  Created by Lucas Hollas on 09/01/23.
//

import Foundation
import CoreData

class CoreDataMa nager {
    
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init() { 
        
        persistentContainer = NSPersistentContainer(name: "SimpleTodoModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }
}
