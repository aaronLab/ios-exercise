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
        
        self.indexView.textFieldPhoneNumber.delegate = self
        self.indexView.btnSignIn.isUserInteractionEnabled = false
        self.indexView.btnSignIn.setTitleColor(.darkGray, for: .normal)
        
        self.setUpTextFieldKeyboard()
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
    
}

//MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    func setUpTextFieldKeyboard() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        
        let toolbar = UIToolbar(frame: CGRect(origin: .zero, size: .init(width: self.view.frame.size.width, height: 30)))
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneBtn = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.keyboardDonePressed))
        
        toolbar.setItems([flexSpace, doneBtn], animated: false)
        toolbar.sizeToFit()
        
        self.indexView.textFieldPhoneNumber.inputAccessoryView = toolbar
    }
    
    @objc func keyboardDonePressed() {
        self.view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let previousText = textField.text! as NSString
        var updatedText = previousText.replacingCharacters(in: range, with: string)
        let count = updatedText.count
        
        if count > 13 {
            updatedText.remove(at: updatedText.index(updatedText.startIndex, offsetBy: range.location))
        }
        
        let deletedChar = (textField.text! as NSString).substring(with: range)
        
        if range.length == 1 && deletedChar == "-" {
            return false
        }
        
        if range.length == 1 && string.count == 0 {
            if count == 9 || count == 4 {
                self.indexView.textFieldPhoneNumber.text = String(textField.text!.dropLast())
            }
        } else {
            if count == 4 || count == 9 {
                self.indexView.textFieldPhoneNumber.text = "\(textField.text!)-"
            }
        }
        
        let isValidNumber = Util().isValidPhoneNumber(candidate: updatedText)
        
        self.indexView.btnSignIn.isUserInteractionEnabled = isValidNumber
        
        if isValidNumber {
            self.indexView.btnSignIn.setTitleColor(.white, for: .normal)
            self.indexView.btnSignIn.backgroundColor = .orange
            self.indexView.textFieldPhoneNumber.layer.borderColor = UIColor.systemGreen.cgColor
        } else {
            self.indexView.btnSignIn.setTitleColor(.darkGray, for: .normal)
            self.indexView.btnSignIn.backgroundColor = .gray
            self.indexView.textFieldPhoneNumber.layer.borderColor = UIColor.blue.cgColor
        }
        
        return count < 14
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        self.indexView.textFieldPhoneNumber.layer.borderColor = UIColor.lightGray.cgColor
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        self.indexView.textFieldPhoneNumber.layer.borderColor = UIColor.blue.cgColor
        return true
    }
}
