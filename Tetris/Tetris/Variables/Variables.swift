//
//  Variables.swift
//  Tetris
//
//  Created by Aaron Lee on 2021/01/10.
//

import Foundation
import SpriteKit

struct Variables {
    static var backArrays = [[Int]]()
    static var scene = SKScene()
    static var brickValue = Brick().bricks()
    static var dx: CGFloat = 4
    static var dy: CGFloat = 2
}
