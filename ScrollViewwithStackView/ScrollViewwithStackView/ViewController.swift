//
//  ViewController.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    private var indexView: IndexView { view as! IndexView }
    
    override func loadView() {
        self.view = IndexView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.indexView.textFieldPhoneNumber.delegate = self
        
        self.setupOnClicks()
    }
    
    func setupOnClicks() {
        self.indexView.btnSignIn.addTarget(self, action: #selector(self.btnSignInPressed(_:)), for: .touchUpInside)
        self.indexView.btnSocial1.addTarget(self, action: #selector(self.btnSignInPressed(_:)), for: .touchUpInside)
        self.indexView.btnSocial2.addTarget(self, action: #selector(self.btnSignInPressed(_:)), for: .touchUpInside)
        self.indexView.btnSocial3.addTarget(self, action: #selector(self.btnSignInPressed(_:)), for: .touchUpInside)
    }
    
    @objc func btnSignInPressed(_ sender: UIButton) {
        if let title = sender.currentTitle {
            print("You pressed \"\(title)\" button.")
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(string)
        return true
    }
    
}

