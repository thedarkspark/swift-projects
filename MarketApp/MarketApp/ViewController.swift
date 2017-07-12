//
//  ViewController.swift
//  MarketApp
//
//  Created by Bernard Huff on 7/5/17.
//  Copyright © 2017 Flyhightech.LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func enterBtn(_ sender: Any) {
        
        //to do a little later. 
        let newStore = Store_type(context: context)
        
        newStore.storename = txtField.text
        
        do{
            
            ad.saveContext()
            
            txtField.text = ""
            
        } catch {
            
            print("Cannot print to screen")
        
        }
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}

