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
        ["Four + Two is equal to Six", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = self.quiz[self.questionNumber][1]
        
        // Check Answer
        if (userAnswer == actualAnswer) {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        self.updateUI()
    }
    
    func updateUI() {
        if (self.questionNumber + 1 >= self.quiz.count) {
            self.questionNumber = 0
        } else {
            self.questionNumber += 1
        }
        self.questionLabel.text = self.quiz[self.questionNumber][0]
    }
    
}

