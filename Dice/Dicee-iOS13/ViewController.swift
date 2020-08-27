//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftNumber = 0
    var rightNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        // Init Image
        let diceImages = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        diceImageView1.image = diceImages[leftNumber]
        diceImageView2.image = diceImages[rightNumber]
        // Left Number
        if leftNumber < 5 {
            leftNumber += 1
        } else {
            leftNumber = 0
        }
        // Right Number
        if rightNumber == 0 {
            rightNumber = 5
        } else {
            rightNumber -= 1
        }
        
    }
    
}

