//
//  ViewController.swift
//  Audio Player
//
//  Created by Bernard Huff on 6/26/17.
//  Copyright © 2017 Flyhightech.LLC. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()

    @IBAction func playBtn(_ sender: Any) {
        
        player.play()
        
    }
    
    @IBAction func pauseBtn(_ sender: Any) {
        
        player.pause()
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        
        player.volume = slider.value
        
    }
    
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = Bundle.main.path(forResource: "cNote", ofType: "mp3")
        
        do {
        
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
            
            player.play()
            
        } catch {
        
            //process any errors
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }

}

