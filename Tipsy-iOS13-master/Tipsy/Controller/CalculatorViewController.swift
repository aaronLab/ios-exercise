//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var totalForOne = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let nextVC = segue.destination as! ResultViewController
            nextVC.totalForOne = self.totalForOne
            nextVC.tip = Int(self.tip * 100)
            nextVC.numberOfPeople = self.numberOfPeople
        }
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        self.billTextField.endEditing(true)
        
        self.zeroPctButton.isSelected = false
        self.tenPctButton.isSelected = false
        self.twentyPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        let dropPercent = String(buttonTitle.dropLast())
        let dropPercentAsNumber = Double(dropPercent)!
        self.tip = dropPercentAsNumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        self.splitNumberLabel.text = String(format: "%.0f", sender.value)
        self.numberOfPeople = Int(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let textBill = self.billTextField.text!
        if textBill != "" {
            self.billTotal = Double(textBill)!
            let result = self.billTotal * (1 + self.tip) / Double(self.numberOfPeople)
            self.totalForOne = String(format: "%.2f", result)
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }
    }
    
}
