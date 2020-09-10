//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var timer = Timer()
    var player: AVAudioPlayer?
    
    let eggTimes: [String: Int] = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsPassed = 0
    var totalTime = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.progressBar.progress = 0
    }

    @IBAction func eggsBtnTapped(_ sender: UIButton) {
        self.timer.invalidate()
        
        let hardness = sender.currentTitle!
        self.totalTime = eggTimes[hardness]!
        
        self.lblTitle.text = "How do you like your eggs?"
        self.progressBar.progress = 0.0
        self.secondsPassed = 0
        
        self.timer = Timer.scheduledTimer(
            timeInterval: 1.0, target: self,
            selector: #selector(self.updateCounter), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateCounter() {
        if (self.secondsPassed < totalTime) {
            self.progressBar.progress = Float(secondsPassed) / Float(totalTime)
            self.secondsPassed += 1
        } else {
            self.lblTitle.text = "DONE!"
            self.progressBar.progress = 1.0
            
            guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else { return }
            
            do {
                self.player = try AVAudioPlayer(contentsOf: url)
                guard let player = self.player else { return }
                player.numberOfLoops = 0
                player.play()
            } catch {
                print("Error")
            }
        }
    }
    
}
