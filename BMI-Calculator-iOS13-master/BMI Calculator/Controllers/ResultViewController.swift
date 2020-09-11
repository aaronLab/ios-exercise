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
    @IBOutlet weak var resultAdviceLabel: UILabel!
    
    var resultBMI: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.resultLabel.text = self.resultBMI
        self.resultAdviceLabel.text = self.advice
        self.view.backgroundColor = self.color
    }
    
    @IBAction func recalculatePresed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
