//
//  ViewController.swift
//  FlappyBird
//
//  Created by 伊藤龍哉 on 2020/03/08.
//  Copyright © 2020 ryuuya.itou. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = self.view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        let scene = StartScene(size:skView.frame.size)
        skView.presentScene(scene)
    }
}

