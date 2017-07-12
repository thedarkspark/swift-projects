//
//  GameScene.swift
//  PressMe
//
//  Created by Bernard Huff on 6/19/17.
//  Copyright © 2017 Flyhightech.LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var player:SKSpriteNode!
    
    var player2:SKSpriteNode!
    
    var initialPLayerPosition:CGPoint!
    
    override func didMove(to view: SKView) {
        
        self.physicsWorld.gravity = CGVectorMake(0, 0)
        
        physicsWorld.contactDelegate = self
        
        }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }

}
