//
//  CoreDataHelper.swift
//  MesAmis
//
//  Created by Bo Bunmeng on 1/30/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit
import CoreData

enum DBEntity: String {
    case category = "Category"
}

class CoreDataHelper {
    
    static var instance = CoreDataHelper()
    
    private init() {}
    
    func save() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "", in: managedContext)!
        let person = NSManagedObject(entity: entity, insertInto: managedContext)
        person.setValue("", forKey: "")
        
        do {
            try managedContext.save()
            
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    func fetch() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "")
        do {
            let _ = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }
    
}
