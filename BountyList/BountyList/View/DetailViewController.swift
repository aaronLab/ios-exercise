//
//  DetailViewController.swift
//  BountyList
//
//  Created by joonwon lee on 2020/03/04.
//  Copyright © 2020 com.joonwon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    let viewModel = DetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if let safeBountyInfo = self.viewModel.bountyInfo {
            self.imgView.image = safeBountyInfo.image
            self.nameLabel.text = safeBountyInfo.name
            self.bountyLabel.text = "$ \(safeBountyInfo.bounty)"
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
