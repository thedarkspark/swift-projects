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
        
        let shapeNode = SKShapeNode(circleOfRadius: 100)
        
        shapeNode.fillColor = UIColor.red
        
        shapeNode.position = CGPoint(x: 0, y: 0)
        
        self.addChild(shapeNode)
        
        let action = SKAction.rotate(byAngle: CGFloat(6.28), duration: 2)
        
        sprite1?.run(action)
        
        //sprite2?.run(action)
       
    }
    
    override func update(_ currentTime: TimeInterval) {
        
        // Called before each frame is rendered
        
    }
    
}
