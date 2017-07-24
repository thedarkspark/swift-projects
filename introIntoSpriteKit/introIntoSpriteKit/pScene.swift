//
//  pScene.swift
//  introIntoSpriteKit
//
//  Created by Bernard Huff on 7/24/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import UIKit

import SpriteKit

import GameplayKit

class PhysicsScene: SKScene {

    var sprite1 : SKSpriteNode?
    
    var sprite2 : SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        sprite1 = self.childNode(withName: "spriteNode1") as? SKSpriteNode
        
        sprite2 = self.childNode(withName: "spriteNode2") as? SKSpriteNode
        
    }

}


