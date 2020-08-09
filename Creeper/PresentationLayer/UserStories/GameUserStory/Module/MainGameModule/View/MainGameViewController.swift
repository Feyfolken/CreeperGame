//
//  MainGameViewController.swift
//  Creeper
//
//  Created by Feyfolken on 11.07.2020.
//  Copyright © 2020 Feyfolken. All rights reserved.
//

import UIKit
import SpriteKit

class MainGameViewController: UIViewController {

    var output: MainGameModuleViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output.viewIsReady()
    }
    
    private func presentSKScene() {
        if let view = self.view as! SKView? {
            
            if let scene = SKScene(fileNamed: "MainGameModuleScene") {
                scene.scaleMode = .aspectFill
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}

extension MainGameViewController: MainGameModuleViewInput {
    
    func setupInitialState() {
        presentSKScene()
    }
}
