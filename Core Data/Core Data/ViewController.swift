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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

