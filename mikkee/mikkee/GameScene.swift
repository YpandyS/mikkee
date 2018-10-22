//
//  GameScene.swift
//  mikkee
//
//  Created by 笹本　勇 on 2018/10/21.
//  Copyright © 2018年 笹本　勇. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene,SKPhysicsContactDelegate {
    
    let msgLabel = SKLabelNode(fontNamed: "Chalkduster")
    var msg:String = "テスト"
    
    var myimage = SKSpriteNode(imageNamed: "asteroid3")
    var myimage2 = SKSpriteNode(imageNamed: "asteroid1")
    var myimage3 = SKSpriteNode(imageNamed: "asteroid2")

    let randomSource = GKARC4RandomSource()
    
    override func didMove(to view: SKView) {
        
        self.backgroundColor = UIColor.black
        
        msgLabel.text = msg
        msgLabel.fontSize = 36
        msgLabel.position = CGPoint(x:0, y: 250)
        self.addChild(msgLabel)
        
        let myimage = SKSpriteNode(imageNamed: "asteroid3")
        myimage.name = "myimage"
        myimage.size = CGSize(width:200, height:200)
        myimage.position = CGPoint(x:0, y:100)
        self.addChild(myimage)
        
        let myimage2 = SKSpriteNode(imageNamed: "asteroid1")
        myimage2.name = "myimage2"
        myimage2.size = CGSize(width:200, height:200)
        myimage2.position = CGPoint(x:-150, y:-100)
        self.addChild(myimage2)

        let myimage3 = SKSpriteNode(imageNamed: "asteroid2")
        myimage3.name = "myimage3"
        myimage3.size = CGSize(width:200, height:200)
        myimage3.position = CGPoint(x:150, y:-100)
        self.addChild(myimage3)

    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches {
            let location = touch.location(in: self)
            let touchedNode = self.atPoint(location)
            if let name = touchedNode.name {
                if name == "myimage" {
                    msg = "正常"
                    msgLabel.text = msg
                    
                } else if name == "myimage2" {
                    
                    msg = "崩壊寸前"
                    msgLabel.text = msg
                
                } else if name == "myimage3" {
                
                    msg = "異変"
                    msgLabel.text = msg
           
                }
            }
        }
    }

}
