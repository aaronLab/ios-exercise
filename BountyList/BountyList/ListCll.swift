//
//  ListCll.swift
//  BountyList
//
//  Created by Aaron Lee on 9/30/20.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    func update(info: BountyInfo) {
        self.imgView.image = info.image
        self.nameLabel.text = info.name
        self.bountyLabel.text = "$ \(info.bounty)"
    }
}
