//
//  StartScene.swift
//  FlappyBird
//
//  Created by 伊藤龍哉 on 2020/03/10.
//  Copyright © 2020 ryuuya.itou. All rights reserved.
//

import SpriteKit

class StartScene: SKScene {
    let titleLabel = SKLabelNode(text: "鳥、空を飛ぶ")
    let startLabel = SKLabelNode(text: "はじめる？")
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(red: 0.15, green: 0.75, blue: 0.90, alpha: 1)
        
        titleLabel.name = "title"
        titleLabel.position = CGPoint(x: self.frame.size.width / 2, y: 2 * self.frame.size.height / 3)
        self.addChild(titleLabel)
        
        startLabel.name = "start"
        startLabel.position = CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 3)
        self.addChild(startLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch: AnyObject in touches {
            let location = touch.location(in: self)
            let touchedNode = self.atPoint(location)
            
            if (touchedNode.name != nil) {
                if (touchedNode.name == "start"){
                    let scene = GameScene(size: self.scene!.size)
                    scene.scaleMode = SKSceneScaleMode.aspectFill
                    self.view!.presentScene(scene)
                }
            }
        }
    }
}
