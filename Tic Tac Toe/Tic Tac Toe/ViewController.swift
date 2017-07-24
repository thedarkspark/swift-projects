//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Bernard Huff on 7/22/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//  
//  I left off at 34:00 on the video

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fields: [TTTImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupGameLogic() {
    
        for _ in 0 ... fields.count - 1 {
        
            let gestureRecognizer = UITapGestureRecognizer(target: self, action: Selector(("fieldTapped:")))
            
            gestureRecognizer.numberOfTapsRequired = 1
            
            fields[index].addGestureRecognizer(gestureRecognizer)
            
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

