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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Update UI
        self.updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = self.quizBrain.checkAnswer(userAnswer)
        let resultMessage: String
        
        if (userGotItRight) {
            sender.backgroundColor = .green
            resultMessage = "Correct!"
        } else {
            sender.backgroundColor = .red
            resultMessage = "Wrong!"
        }
        
        self.quizBrain.nextQuestion()
        
        let alert = UIAlertController(title: nil, message: resultMessage, preferredStyle: .alert)
        self.present(alert, animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            alert.dismiss(animated: true) {
                self.updateUI()
            }
        }
    }
    
    func updateUI() {
        self.questionLabel.text = self.quizBrain.getQuizText()
        self.scoreLabel.text = ("Score: \(self.quizBrain.getScore())")
        
        let answers = self.quizBrain.getAnswerSheet()
        self.firstButton.setTitle(answers[0], for: .normal)
        self.secondButton.setTitle(answers[1], for: .normal)
        self.thirdButton.setTitle(answers[2], for: .normal)
        
        self.firstButton.backgroundColor = .clear
        self.secondButton.backgroundColor = .clear
        self.thirdButton.backgroundColor = .clear
        
        self.progressBar.progress = self.quizBrain.getProgress()
    }
    
}
