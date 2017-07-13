//
//  addItemViewController.swift
//  marketplaceapp
//
//  Created by Bernard Huff on 7/12/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

import CoreData

class addItemViewController: UIViewController {

    @IBOutlet weak var txtItemName: UITextField!
    
    @IBOutlet weak var storePicker: UIPickerView!
    
    var listOfStores = [StoreType]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    func loadStores() {
    
        //You left off right here huff. 
        
    }
    
    
    
    
    
    

    @IBAction func buSelectPicture(_ sender: Any) {
        
        //Right here is where you come back
        
        print("Select Image")
        
    }
    
    @IBAction func buSave(_ sender: Any) {
        
        
    }
    
    @IBAction func buBack(_ sender: Any) {
        
        
    }
    
    
    
}








