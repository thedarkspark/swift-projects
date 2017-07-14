//
//  ViewController.swift
//  Log In Demo
//
//  Created by Bernard Huff on 7/14/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBAction func submitBtn(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let newValue = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
        
        newValue.setValue(textField.text, forKey: "name")
        
        do {
        
            try context.save()
            
            textField.alpha = 0
            
            logInButton.alpha = 0
            
            label.alpha = 1
            
            label.text = "Hi There" + textField.text! + "!"
            
        } catch {
            
            print("Failed to save")
        
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        request.returnsObjectsAsFaults = false
        
        do {
            
            let results = try context.fetch(request)
            
            for results in results as! [NSManagedObject] {
            
                if let username = results.value(forKey: "name") as? String {
                    
                    textField.alpha = 0
                    
                    logInButton.alpha = 0
                    
                    label.alpha = 1
                    
                    label.text = "Hi There" + username + "!"
                
                }
                
            }
            
        } catch {
            
            print("Request Failed")
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

