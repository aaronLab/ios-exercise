//
//  Brick.swift
//  Tetris
//
//  Created by Aaron Lee on 2021/01/10.
//

import Foundation
import SpriteKit

class Brick {
    
    struct Bricks {
        var color = UIColor()
        var point = [CGPoint]()
        let brickSize = 35
        let zPosition: CGFloat = 1
        var brickName = String()
    }
    
    func bricks() -> Bricks {
        var bricks = [Bricks]()
        
        var brick1 = [CGPoint]()
        brick1.append(CGPoint(x: 0, y: 0))
        brick1.append(CGPoint(x: 1, y: 0))
        brick1.append(CGPoint(x: -1, y: 0))
        brick1.append(CGPoint(x: 0, y: 1))
        bricks.append(Bricks(color: .red, point: brick1, brickName: "brick1"))
        
        var brick2 = [CGPoint]()
        brick2.append(CGPoint(x: -1, y: 0))
        brick2.append(CGPoint(x: 0, y: 0))
        brick2.append(CGPoint(x: 1, y: 0))
        brick2.append(CGPoint(x: 2, y: 0))
        bricks.append(Bricks(color: .cyan, point: brick2, brickName: "brick2"))
        
        var brick3 = [CGPoint]()
        brick3.append(CGPoint(x: 0, y: 0))
        brick3.append(CGPoint(x: 1, y: 0))
        brick3.append(CGPoint(x: 0, y: 1))
        brick3.append(CGPoint(x: -1, y: 1))
        bricks.append(Bricks(color: .cyan, point: brick3, brickName: "brick3"))
        
        var brick4 = [CGPoint]()
        brick4.append(CGPoint(x: -1, y: 1))
        brick4.append(CGPoint(x: -1, y: 0))
        brick4.append(CGPoint(x: 0, y: 0))
        brick4.append(CGPoint(x: 1, y: 0))
        bricks.append(Bricks(color: .cyan, point: brick4, brickName: "brick4"))
        
        var brick5 = [CGPoint]()
        brick5.append(CGPoint(x: 1, y: 0))
        brick5.append(CGPoint(x: 0, y: 0))
        brick5.append(CGPoint(x: 0, y: 1))
        brick5.append(CGPoint(x: 1, y: 1))
        bricks.append(Bricks(color: .cyan, point: brick5, brickName: "brick5"))
        
        var brick6 = [CGPoint]()
        brick6.append(CGPoint(x: 1, y: 1))
        brick6.append(CGPoint(x: -1, y: 0))
        brick6.append(CGPoint(x: 0, y: 0))
        brick6.append(CGPoint(x: 1, y: 1))
        bricks.append(Bricks(color: .cyan, point: brick6, brickName: "brick6"))
        
        var brick7 = [CGPoint]()
        brick7.append(CGPoint(x: 0, y: 0))
        brick7.append(CGPoint(x: -1, y: 0))
        brick7.append(CGPoint(x: 0, y: 1))
        brick7.append(CGPoint(x: 1, y: 1))
        bricks.append(Bricks(color: .cyan, point: brick7, brickName: "brick5"))
        
        let random = Int.random(in: 0..<7)
        return bricks[random]
    }
    
}
