//
//  DetailViewModel.swift
//  BountyList
//
//  Created by Aaron Lee on 9/30/20.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import Foundation

class DetailViewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo) {
        self.bountyInfo = model
    }
}
