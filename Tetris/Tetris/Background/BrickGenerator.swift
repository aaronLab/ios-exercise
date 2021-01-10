//
//  BrickGenerator.swift
//  Tetris
//
//  Created by Aaron Lee on 2021/01/10.
//

import Foundation
import SpriteKit

class BrickGenerator {
    
    let brickValue = Variables.brickValue
    
    init() {
        let brick = brickValue.point
        for item in brick {
            let x = item.x + Variables.dx
            let y = item.y + Variables.dy
            Variables.backArrays[Int(y)][Int(x)] = 1
        }
    }
    
}
