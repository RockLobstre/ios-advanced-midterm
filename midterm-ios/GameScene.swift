//
//  GameScene.swift
//
//  Created by Liam Salehi
//  Mid-Term Test
//  SpriteKit Slot Machine
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SVLSpriteNodeButtonDelegate {
    
    var addPointsButton: MySpriteNodeButton!
    var endGameButton: MySpriteNodeButton!
    var scoreLabel: SKLabelNode!
    
    var score = 0

    override func didMove(to view: SKView) {
        
        addPointsButton = MySpriteNodeButton(texture: nil, color: .magenta, size: CGSize(width: 300, height: 100))
        addPointsButton.name = "addPointsButton"
        addPointsButton.position = CGPoint(x: 0, y: -300)
        addPointsButton.isUserInteractionEnabled = true
        addPointsButton.delegate = self
        addChild(addPointsButton)
        
        endGameButton = MySpriteNodeButton(texture: nil, color: .red, size: CGSize(width: 300, height: 100))
        endGameButton.name = "endGameButton"
        endGameButton.position = CGPoint(x: 0, y: -500)
        endGameButton.isUserInteractionEnabled = true
        endGameButton.delegate = self
        addChild(endGameButton)
        
        scoreLabel = childNode(withName: "scoreLabel") as? SKLabelNode
    }
    
    func addToScore(){
        score += 100
        scoreLabel.text = "Bet: \(score)"
    }
    
    func endGame(){
        scoreLabel.text = "Jackpot!"
        score = 0
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    //MARK: - SVLSpriteNodeButtonDelegate
    func spriteNodeButtonPressed(_ button: MySpriteNodeButton) {
        
        switch button {
        case addPointsButton:
            addToScore()
        case endGameButton:
            endGame()
        default:
            break
        }
        
    }
}
