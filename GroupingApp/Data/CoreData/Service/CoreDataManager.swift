//
//  CoreDataManager.swift
//  GroupingApp
//
//  Created by seungjin on 2019/10/03.
//  Copyright © 2019 Jinnify. All rights reserved.
//


import Foundation
import CoreData

class CoreDataManager {
  
  let modelName: String
  
  init(modelName: String) {
    self.modelName = modelName
  }
  
  private lazy var persistentContainer: NSPersistentContainer = {
    let container = NSPersistentContainer(name: self.modelName)
    container.loadPersistentStores(completionHandler: { (storeDescription, error) in
      if let error = error as NSError? {
        fatalError("Unresolved error \(error), \(error.userInfo)")
      }
    })
    return container
  }()
  
  var mainContext: NSManagedObjectContext {
    return persistentContainer.viewContext
  }
}
