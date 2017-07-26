//
//  GameScene.swift
//  Breakout Game
//
//  Created by Bernard Huff on 7/24/17.
//  Copyright © 2017 Bernard Huff. All rights reserved.
//

import SpriteKit

import GameplayKit

class GameScene: SKScene {
    
    var playerPaddle:SKSpriteNode?
    
    var ball:SKSpriteNode?
    
    var startImpulse: CGFloat = 50
    
    enum bitMasks : UInt32 {
        
        case edgeBitMask = 0b1
        case playerPaddleBitMask = 0b10
        case ballBitMask = 0b100
        
    }
    
    override func didMove(to view: SKView) {
        
        playerPaddle = self.childNode(withName: "playerPaddle") as? SKSpriteNode
        
        ball = self.childNode(withName: "ball") as? SKSpriteNode
        
        let edgePhysicsBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        
        edgePhysicsBody.categoryBitMask = bitMasks.edgeBitMask.rawValue
        
        edgePhysicsBody.contactTestBitMask = bitMasks.ballBitMask.rawValue
        
        edgePhysicsBody.collisionBitMask = bitMasks.ballBitMask.rawValue
        
        edgePhysicsBody.friction = 0
        
        edgePhysicsBody.restitution = 1
        
        edgePhysicsBody.isDynamic = false
        
        self.physicsBody = edgePhysicsBody
        
        ball?.physicsBody?.contactTestBitMask = bitMasks.edgeBitMask.rawValue | bitMasks.playerPaddleBitMask.rawValue
        
        ball?.physicsBody?.collisionBitMask = bitMasks.edgeBitMask.rawValue | bitMasks.playerPaddleBitMask.rawValue
        
        ball?.physicsBody?.applyImpulse(CGVector(dx: startImpulse, dy: startImpulse))
        
    }
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
  
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
