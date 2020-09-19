//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTypingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        //What should happen when a non-number button is pressed
        
        self.isFinishedTypingNumber = true
        
    }

    @IBAction func numButtonPressed(_ sender: UIButton) {
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            
            if self.isFinishedTypingNumber || self.displayLabel.text == "0" {
                self.displayLabel.text = numValue
                self.isFinishedTypingNumber = false
            } else {
                self.displayLabel.text = displayLabel.text! + numValue
            }
            
        }
    }

}

