//
//  ViewController.swift
//  Weather App
//
//  Created by Bernard Huff on 7/18/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        
        let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q= " + cityTextField.text! + ",uk&appid=bbcc2a4f563a9c647d9a642cbf94b17e")!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if error != nil {
                
                print("Error")
                
            } else {
                
                if let urlContent = data {
                    
                    do {
                        
                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers)
                        
                        print(jsonResult)
                        
                        print(jsonResult["name"])
                        
                        if let description = ((jsonResult["weather"] as? NSArray)?[0] as? NSDictionary)? ["description"] as? String {
                            
                            DispatchQueue.main.sync(execute: self.resultLabel.text = description)
                            
                        }
                        
                    } catch {
                        
                        print("JSON data failed")
                        
                    }
                    
                }
                
            }
            
        }
        
        task.resume()

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

