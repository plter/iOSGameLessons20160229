//
//  Clock.swift
//  L002Clock
//
//  Created by plter on 3/7/16.
//  Copyright © 2016 jikexueyuan. All rights reserved.
//

import SpriteKit

class Clock: SKNode {
    
    private var hourPointer:SKSpriteNode!
    private var secondPointer:SKSpriteNode!
    private var minutePointer:SKSpriteNode!
    private var cal:NSCalendar!
    private let PI_X_2:CGFloat = CGFloat(M_PI) * 2

    override init() {
        super.init()
        
        cal = NSCalendar(calendarIdentifier: NSCalendarIdentifierChinese)
        
        hourPointer = SKSpriteNode(imageNamed: "Hour")
        hourPointer.anchorPoint = CGPoint(x: 0.5, y: 0.1)
        addChild(hourPointer)
        
        minutePointer = SKSpriteNode(imageNamed: "Minute")
        minutePointer.anchorPoint = CGPoint(x: 0.5, y: 0.1)
        addChild(minutePointer)
        
        secondPointer = SKSpriteNode(imageNamed: "Second")
        secondPointer.anchorPoint = CGPoint(x: 0.5, y: 0.1)
        addChild(secondPointer)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func update(){
        var hour:Int = 0
        var min:Int = 0
        var sec:Int = 0
        var nanosec:Int = 0
        
        cal.getHour(&hour, minute: &min, second: &sec, nanosecond: &nanosec, fromDate: NSDate())
        
        hourPointer.zRotation = -PI_X_2 * CGFloat(hour) / 12 - PI_X_2 / 12 * CGFloat(min) / 60
        minutePointer.zRotation = -PI_X_2 * CGFloat(min) / 60
        secondPointer.zRotation = -PI_X_2 * CGFloat(sec) / 60
    }
}
