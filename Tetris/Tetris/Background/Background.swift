//
//  Background.swift
//  Tetris
//
//  Created by Aaron Lee on 2021/01/10.
//

import Foundation
import SpriteKit

class Background {
    
    let row = 10
    let col = 20
    
    init() {
        Variables.backArrays = Array(repeating: Array(repeating: 0, count: self.row), count: self.col)
    }
    
}
