//
//  GameScene.swift
//  introIntoSpriteKit
//
//  Created by Bernard Huff on 7/16/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import SpriteKit

import GameplayKit

class GameScene: SKScene {
    
    var sprite1: SKSpriteNode?
    
    var sprite2: SKSpriteNode?
    
    var label: SKLabelNode?
    
    override func didMove(to view: SKView) {
        
        sprite1 = self.childNode(withName: "spriteNode1") as? SKSpriteNode
        
        sprite2 = self.childNode(withName: "spriteNode2") as? SKSpriteNode
        
        label = self.childNode(withName: "labelNode") as? SKLabelNode
        
        label?.text = "Nodes Tutorial"
        
        sprite1?.position = CGPoint(x: 0, y: -500)
        
        sprite2?.color = UIColor.blue
       
    }
    
// Last thing I did was delete all the touch is functions.
    
    override func update(_ currentTime: TimeInterval) {
        
        // Called before each frame is rendered
        
    }
    
}
