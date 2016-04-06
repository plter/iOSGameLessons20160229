//
//  GameScene.swift
//  DragImage
//
//  Created by plter on 3/28/16.
//  Copyright (c) 2016 jikexueyuan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var img:Card!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        
        img = Card(imageNamed: "Photo")
        addChild(img)
        img.position.x = size.width/2 - 300
        img.position.y = size.height/2
        img.userInteractionEnabled = true
        img.dragEnabled = true
        
        img = Card(imageNamed: "Photo")
        addChild(img)
        img.position.x = size.width/2 - 50
        img.position.y = size.height/2
        img.userInteractionEnabled = true
        img.dragEnabled = true
        
        img = Card(imageNamed: "Photo")
        addChild(img)
        img.position.x = size.width/2 + 200
        img.position.y = size.height/2
        img.userInteractionEnabled = true
        
    }
}
