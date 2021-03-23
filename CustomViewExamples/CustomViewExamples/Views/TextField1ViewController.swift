//
//  TextField1ViewController.swift
//  CustomViewExamples
//
//  Created by Aaron Lee on 2021/03/23.
//

import UIKit

class TextField1ViewController: UIViewController {
    
    // MARK: - Properties
    private let textField1: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Text Field 1"
        return tf
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    // MARK: - Helpers
    
    private func configureViews() {
        view.backgroundColor = .white
        
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8.0
        
        view.addSubview(stack)
        stack.center(inView: view)
        stack.anchor(
            left: view.leftAnchor,
            right: view.rightAnchor,
            paddingLeft: 8,
            paddingRight: 8
        )
        
        stack.addArrangedSubview(textField1)
        textField1.addBottomBorder()
    }
    
}

extension UITextField {
    fileprivate func addBottomBorder(height: CGFloat = 44, borderColor: UIColor = .black) {
        borderStyle = .none
        setHeight(height)
        
        let spacer = UIView()
        spacer.setDimensions(height: height, width: 4)
        leftView = spacer
        leftViewMode = .always
        rightView = spacer
        rightViewMode = .always
        
        let borderView = UIView()
        borderView.backgroundColor = borderColor
        
        addSubview(borderView)
        borderView.anchor(left: leftAnchor,
                          right: rightAnchor, bottom: bottomAnchor)
        borderView.setHeight(1)
    }
}
