//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Aaron Lee on 9/12/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalForOne = "0.0"
    var numberOfPeople = 2
    var tip = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.totalLabel.text = self.totalForOne
        
        self.settingsLabel.text = "Split between \(self.numberOfPeople), with \(self.tip)% tip."
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
