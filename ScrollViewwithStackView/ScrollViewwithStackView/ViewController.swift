//
//  ViewController.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import UIKit

class ViewController: UIViewController {
    
    private var indexView: IndexView { view as! IndexView }
    
    override func loadView() {
        self.view = IndexView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

