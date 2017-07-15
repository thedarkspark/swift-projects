//
//  ViewController.swift
//  Downloading Images From the Web
//
//  Created by Bernard Huff on 7/15/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Radiohead.jpg/270px-Radiohead.jpg)
        
        let request = NSMutableURLRequest(url: url)
        
        let task =  URLSession.shared.dataTask(with: request as URLRequest) {
        
        data, response, error in
            
            if error != nil {
            
                print("Error")
                
            } else {
                
                if let data = data {
                
                    if let radioheadImage = UIImage(data: data) {
                    
                    }
                    
                }
            
              }
        
        }
        
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

