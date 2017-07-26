//
//  ViewController.swift
//  Hustle Mode
//
//  Created by Bernard Huff on 7/26/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlueBtn: UIImageView!
    
    @IBOutlet weak var powerBtn: UIButton!
    
    @IBOutlet weak var cloudHolder: UIView!
    
    @IBOutlet weak var rocket: UIImageView!
    
    @IBOutlet weak var hustleLbl: UILabel!
    
    @IBOutlet weak var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        
        let url = URL(fileURLWithPath: path)
        
        do {
        
            player = try AVAudioPlayer(contentsOf: url)
            
            player.prepareToPlay()
            
        } catch let error as NSError {
        
            print(error.description)
        }
        
    }

    @IBAction func powerBtnPressed(_ sender: Any) {
        
        cloudHolder.isHidden = false
        
        darkBlueBtn.isHidden = true
        
        powerBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: { 
            
            self.rocket.frame = CGRect(x: 0, y: 140, width: 375, height: 402)
            
        }) { (finished) in

            self.hustleLbl.isHidden = false
            
            self.onLbl.isHidden = false
            
        }
        
    }

    

}

