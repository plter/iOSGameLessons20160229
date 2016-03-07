//
//  GameScene.swift
//  L002Clock
//
//  Created by plter on 3/7/16.
//  Copyright (c) 2016 jikexueyuan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    private var clock:Clock!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        clock = Clock()
        clock.position = CGPoint(x: 300, y: 300)
        addChild(clock)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        clock.update()
    }
}
