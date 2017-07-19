//
//  ViewController.swift
//  Weather App
//
//  Created by Bernard Huff on 7/18/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        _ = URL(string: "http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=bbcc2a4f563a9c647d9a642cbf94b17e")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if error != nil {
            
                print(error)
            
        } else {
            
            if let urlContent = data {
                
                do {
                
                let jsonResult = JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers)
                
                print(jsonResult)
                    
                    
                
                }
            
            }
        
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
