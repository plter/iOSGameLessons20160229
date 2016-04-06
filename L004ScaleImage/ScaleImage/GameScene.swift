//
//  GameScene.swift
//  ScaleImage
//
//  Created by plter on 3/21/16.
//  Copyright (c) 2016 jikexueyuan. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    
    var distance:CGFloat = 0
    var img:SKSpriteNode!
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        img = childNodeWithName("img") as! SKSpriteNode
    }
    
    
    func getDistance(p1:CGPoint,p2:CGPoint)->CGFloat{
        let dx = p1.x - p2.x
        let dy = p1.y - p2.y
        
        return sqrt(pow(dx, 2)+pow(dy, 2))
    }
    
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        
        if touches.count == 2{
            let theDistance = getDistance(touches[touches.startIndex].locationInNode(self), p2: touches[touches.startIndex.advancedBy(1)].locationInNode(self))
            
            if distance != 0{
                if theDistance - distance > 5 {
                    img.xScale *= theDistance / distance
                    img.yScale = img.xScale
                    
                    distance = theDistance
                }else if theDistance - distance < -5{
                    img.xScale *= theDistance / distance
                    img.yScale = img.xScale
                    
                    distance = theDistance
                }
                
            }else{
                distance = theDistance
            }
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        distance = 0
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
