//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Data
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    // Elements
    var imgView: UIImageView!
    var lblTitle: UILabel!
    var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        // [Background]
        self.view.backgroundColor = .systemTeal
        
        // [Commons]
        let randomInt = Int.random(in: 0..<ballArray.count)
        let horizontalCentre = self.view.bounds.size.width / 2
        let verticalCentre = self.view.bounds.size.height / 2
        
        // [Image View]
        imgView = UIImageView(image: ballArray[randomInt])
        let imageViewFrame = CGRect(x: 0, y: 0, width: 250, height: 250)
        imgView.frame = imageViewFrame
        imgView.center = CGPoint(x: horizontalCentre, y: verticalCentre)
        self.view.addSubview(imgView)
        
        // [Label]
        lblTitle = UILabel()
        let lblFrame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 50)
        lblTitle.frame = lblFrame
        lblTitle.font = UIFont.systemFont(ofSize: 40)
        lblTitle.center = CGPoint(x: horizontalCentre, y: verticalCentre - 200)
        lblTitle.textAlignment = .center
        lblTitle.text = "Ask Me Anything"
        lblTitle.textColor = .white
        self.view.addSubview(lblTitle)
        
        // [Button]
        btn = UIButton()
        let btnFrame = CGRect(x: 0, y: 0, width: 100, height: 50)
        btn.frame = btnFrame
        btn.setTitle("Ask", for: .normal)
        btn.backgroundColor = .white
        btn.setTitleColor(UIColor.systemTeal, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        btn.addTarget(self, action: #selector(self.askBtnPressed(_:)), for: .touchUpInside)
        btn.center = CGPoint(x: horizontalCentre, y: verticalCentre + 200)
        self.view.addSubview(btn)
    }
    
    @objc func askBtnPressed(_ sender: UIButton) {
        let randomInt = Int.random(in: 0..<ballArray.count)
        imgView.image = ballArray[randomInt]
    }
    

}

