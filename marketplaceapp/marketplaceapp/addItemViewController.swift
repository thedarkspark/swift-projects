//
//  addItemViewController.swift
//  marketplaceapp
//
//  Created by Bernard Huff on 7/12/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

import CoreData

class addItemViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var showView: UIImageView!

    @IBOutlet weak var txtItemName: UITextField!
    
    @IBOutlet weak var storePicker: UIPickerView!
    
    var imagePicker:UIImagePickerController!
    
    var listOfStores = [StoreType]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        loadStores()
        
        storePicker.delegate = self
        
        storePicker.dataSource = self
        
        imagePicker = UIImagePickerController()
        
        imagePicker.delegate = self
        
        // Do any additional setup after loading the view.
        
    }
    
    func loadStores() {
    
        let fetchRequest: NSFetchRequest<StoreType> = StoreType.fetchRequest()
        
        do{
            
            listOfStores = try context.fetch(fetchRequest)
            
        }catch{
            
            print("Cannot print to store")
        
        }
        
    }
    
    //Here is where we added the information for th UIPickerView component.
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return listOfStores.count
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let store = listOfStores[row]
        
        return store.store_name
        
    }
    
    @IBAction func buSelectPicture(_ sender: Any) {
        
        //Right here is where you come back
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
        
            showView.image = image
            
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func buSave(_ sender: Any) {
        
    }
    
    @IBAction func buBack(_ sender: Any) {
        
    }
    
}








