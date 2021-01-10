//
//  GameScene.swift
//  Tetris
//
//  Created by Aaron Lee on 2021/01/10.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        Variables.scene = self
        let bg = Background()
        let generator = BrickGenerator()
        
        
        #if DEBUG
        self.checkBricks()
        #endif
    }
    
    #if DEBUG
    func checkBricks() {
        let arrays = Variables.backArrays
        for item in arrays {
            print(item)
        }
    }
    #endif
    
}
