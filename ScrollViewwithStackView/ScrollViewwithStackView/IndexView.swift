//
//  IndexView.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import UIKit

class IndexView: UIView {
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemBackground
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        
        return view
    }()
    
    let promoteContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lblPromoteTitle: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lblPromoteSubTitle: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let textFieldPhoneNumber: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Phone Number"
        tf.font = .systemFont(ofSize: 15)
        tf.borderStyle = .roundedRect
        tf.autocorrectionType = .no
        tf.keyboardType = .numberPad
        tf.clearButtonMode = .whileEditing
        tf.contentVerticalAlignment = .center
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let btnSignIn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue with Phone Number", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnSocial1: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue with Social 1", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnSocial2: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue with Social 2", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let btnSocial3: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue with Social 3", for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    convenience init() {
        self.init(frame: .zero)
        
        self.updateUI()
    }
    
    let stackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 10.0
        return stackView
    }()
    
    func updateUI() {
        
        
        
        addSubview(scrollView)
        
        // constrain the scroll view to 8-pts on each side
        scrollView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        scrollView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        scrollView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
        scrollView.backgroundColor = .gray
        
        
        // add the stack view to the scroll view
        scrollView.addSubview(stackView)
        
        // constrain the stackview view to 8-pts on each side
        //   this *also* controls the .contentSize of the scrollview
        stackView.backgroundColor = .red
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 16).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16).isActive = true
        stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -16).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16).isActive = true
        
        // add ten buttons to the stack view
        for i in 1...50 {
            
            let b = UIButton()
            b.translatesAutoresizingMaskIntoConstraints = false
            b.setTitle("Button \(i)", for: .normal)
            b.backgroundColor = .blue
            stackView.addArrangedSubview(b)
        }
        
    }
}
