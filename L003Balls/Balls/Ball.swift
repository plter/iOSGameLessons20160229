//
//  Ball.swift
//  Balls
//
//  Created by plter on 3/14/16.
//  Copyright © 2016 jikexueyuan. All rights reserved.
//

import SpriteKit

class Ball: SKSpriteNode {
    
    var speedX:CGFloat = CGFloat(Float64(arc4random()) / Float64(UINT32_MAX)) * 10.0 - 5.0
    var speedY:CGFloat = CGFloat(Float64(arc4random()) / Float64(UINT32_MAX)) * 10.0 - 5.0
    var halfWidth:CGFloat = 0
    var halfHeight:CGFloat = 0

    convenience init(){
        self.init(imageNamed:"Ball")
        
        halfWidth = size.width / 2
        halfHeight = size.height / 2
    }
    
    
    func update(){
        
        position.x += speedX
        position.y += speedY
        
        if position.x < halfWidth {
            speedX = abs(speedX)
        }
        if position.y < halfHeight{
            speedY = abs(speedY)
        }
        if position.x > (scene?.size.width)! - halfWidth{
            speedX = -abs(speedX)
        }
        if position.y > (scene?.size.height)! - halfHeight{
            speedY = -abs(speedY)
        }
    }
}
