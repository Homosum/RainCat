//
//  CatSprite.swift
//  RainCat
//
//  Created by Homosum on 17/7/30.
//  Copyright © 2017年 Thirteen23. All rights reserved.
//

import SpriteKit

public class CatSprite:SKSpriteNode{
    public static func newInstance() -> CatSprite{
        let catSprite = CatSprite(imageNamed: "cat_one")
        catSprite.zPosition = 5
        catSprite.physicsBody = SKPhysicsBody(circleOfRadius: catSprite.size.width*0.5)
        catSprite.physicsBody?.categoryBitMask = CatCategory
        catSprite.physicsBody?.contactTestBitMask = RainDropCategory|WorldCategory
        
        return catSprite
    }
    public func update(deltaTime: TimeInterval){
        
    }
}
