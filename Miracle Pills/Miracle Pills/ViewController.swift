//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Bernard Huff on 7/8/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var stateBtnText: UIButton!
    
    let states = ["Illinois", "Indiana", "Ohio", "Maine", "New-York"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        statePicker.dataSource = self
        
        statePicker.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return states.count
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return states[row]
        
    }
    
}






















