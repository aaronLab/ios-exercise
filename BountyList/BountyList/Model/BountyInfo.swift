//
//  BountyInfo.swift
//  BountyList
//
//  Created by Aaron Lee on 9/30/20.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

struct BountyInfo {
    let name: String
    let bounty: Int
    
    var image: UIImage? {
        return UIImage(named: "\(self.name).jpg")
    }
    
    init(name: String, bounty: Int) {
        self.name = name
        self.bounty = bounty
    }
}
