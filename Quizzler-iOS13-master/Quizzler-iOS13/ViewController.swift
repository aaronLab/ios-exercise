//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        "Four + Two is equal to Six",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        self.questionNumber += 1
        self.updateUI()
        
    }
    
    func updateUI() {
        if (questionNumber >= quiz.count) {
            self.questionNumber = 0
        }
        self.questionLabel.text = self.quiz[self.questionNumber]
    }
    
}

