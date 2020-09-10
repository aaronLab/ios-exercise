//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    let eggTimes: [String: Int] = ["Soft": 3, "Medium": 420, "Hard": 720]
    var selectedTime = 0
    var timer = Timer()

    @IBAction func eggsBtnTapped(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        selectedTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(
            timeInterval: 1.0, target: self,
            selector: #selector(self.updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if (selectedTime > 0) {
            print("\(selectedTime) seconds")
            selectedTime -= 1
        } else {
            lblTitle.text = "DONE!"
        }
    }
    
}
