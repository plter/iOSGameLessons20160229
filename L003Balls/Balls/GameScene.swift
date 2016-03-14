//
//  GameScene.swift
//  Balls
//
//  Created by plter on 3/14/16.
//  Copyright (c) 2016 jikexueyuan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    var balls = [Ball]()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        
        for _ in 0..<30{
            let b = Ball()
            addChild(b)
            b.position = CGPoint(x: size.width/2, y: size.height/2)
            
            balls.append(b)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        balls.forEach { (b:Ball) -> () in
            b.update()
        }
    }
}
