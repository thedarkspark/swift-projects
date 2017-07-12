//
//  ViewController.swift
//  marketplaceapp
//
//  Created by Bernard Huff on 7/12/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtStoreName: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buAddStore(_ sender: Any) {
        
        //To Do you need to add the store.
        
        let newStore = StoreType(context: context)
        
        newStore.store_name = txtStoreName.text
        
        ad.saveContext()
        
        txtStoreName.text = ""
        
    }
    
    @IBAction func buBack(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}

