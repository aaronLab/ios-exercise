//
//  MainViewController.swift
//  CustomViewExamples
//
//  Created by Aaron Lee on 2021/03/23.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    
    private lazy var textField1: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Hello", for: .normal)
        btn.addTarget(self,
                      action: #selector(btnPressed(_:)),
                      for: .touchUpInside)
        return btn
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    // MARK: - Actions
    
    @objc private func btnPressed(_ sender: UIButton) {
        if sender == textField1 {
            let vc = TextField1ViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    // MARK: - Helpers
    
    private func configureViews() {
        view.backgroundColor = .white
        title = "Custom View Examples"
        
        let stack = UIStackView()
        stack.axis = .vertical
        
        stack.addArrangedSubview(textField1)
        
        view.addSubview(stack)
        stack.center(inView: view)
    }
    
}
