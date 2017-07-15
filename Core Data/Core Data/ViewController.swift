//
//  ViewController.swift
//  Core Data
//
//  Created by Bernard Huff on 7/3/17.
//  Copyright © 2017 Flyhightech.LLC. All rights reserved.
//

import UIKit

import CoreData

// This is just a test to see if the github initialized correctly.

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        newUser.setValue("Bernie", forKey: "username")
        
        newUser.setValue("myPaSS", forKey: "password")
        
        newUser.setValue(2, forKey: "age")
        
        do {
            
            try context.save()
            
            print("Saved")
        
        } catch {
            
            print("There was a fuck up!")
        
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        request.predicate = NSPredicate(format: "username = %@", "Kirsten")

        request.returnsObjectsAsFaults = false
        
        do {
        
            let results = try context.fetch(request)
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] {
                
                    if let username = result.value(forKey: "username") as? String {
                    
                        print("username")
                        
                    }
                    
                }
            
            } else {
            
                print("No Results")
                
            }
            
        } catch {
        
            print("Couldn't fetch results")
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

