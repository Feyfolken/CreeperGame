//
//  MainGameModuleScene.swift
//  Creeper
//
//  Created by Feyfolken on 08.08.2020.
//  Copyright © 2020 Feyfolken. All rights reserved.
//

import SpriteKit
import GameplayKit

class MainGameModuleScene: SKScene {
    
    var output: MainGameModuleSceneOutput!

    override func didMove(to view: SKView) {
        let fire = SKSpriteNode(imageNamed: "fire")
        
        addChild(fire)
    }
}

extension MainGameModuleScene: MainGameModuleSceneInput {
    
}
