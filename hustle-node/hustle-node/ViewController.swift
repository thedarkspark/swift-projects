//
//  ViewController.swift
//  hustle-node
//
//  Created by Bernard Huff on 7/26/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    
    @IBOutlet weak var powerButtonOutlet: UIButton!

    @IBOutlet weak var cloudHolder: UIView!
    
    @IBOutlet weak var rocket: UIImageView!
    
    @IBOutlet weak var hustleLbl: UILabel!
    
    @IBOutlet weak var onLbl: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func powerBtnPressed(_ sender: Any) {
        
        print("Test just to see")
        
    }
    
    
}

