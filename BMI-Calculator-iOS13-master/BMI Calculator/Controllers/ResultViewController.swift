//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Aaron Lee on 9/11/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var resultBMI: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.resultLabel.text = resultBMI
    }
    
    @IBAction func recalculatePresed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
