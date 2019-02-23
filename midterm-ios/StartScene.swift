//
//  StartScene.swift
//  MAPD724 - Lesson 2- SpriteKit
//
//  Created by Viktor Bilyk on 2018-01-29.
//  Copyright © 2018 Shifty Land LLC. All rights reserved.
//

import SpriteKit

class StartScene: SKScene {
    var rLabel: Label?
    
    override func didMove(to view: SKView) {
        print("Start scene!")
        //add Welcome Label
        self.rLabel = Label(labelString: "Space!SlotsMachine", position: CGPoint(x: frame.width * 0.5 , y: (frame.height * 0.5) + 50), fontSize: 30.0, fontName: "Dock51", fontColor: SKColor.red, isCentered: true)
        self.addChild(self.rLabel!)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let scene = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            view?.presentScene(scene, transition: SKTransition.crossFade(withDuration: 1.0))
        }
    }
}
