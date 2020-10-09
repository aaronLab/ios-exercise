//
//  IndexView.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import UIKit

class IndexView: UIView {
    
    let defaultSpace: CGFloat = 16.0
    let verySmallSpace: CGFloat = 2.0
    let symbolSize: CGFloat = 48.0
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemBackground
        return scrollView
    }()
    
    let signInStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 10.0
        return stackView
    }()
    
    let promoteContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let imgViewPromoteSymbol: UIImageView = {
        let imgView = UIImageView()
        imgView.translatesAutoresizingMaskIntoConstraints = false
        imgView.image = UIImage(named: "symbol")
        return imgView
    }()
    
    let lblPromoteTitle: UILabel = {
        let label = UILabel()
        label.text = "Welcom to AaronLab!"
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lblPromoteSubTitle: UILabel = {
        let label = UILabel()
        label.text = "www.aaronlab.net"
        label.font = .systemFont(ofSize: 12)
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
        self.backgroundColor = .systemBackground
        
        self.setupScrollView()
        self.setupPromoteView()
        self.setupSignInStackView()
    }
    
    func setupScrollView() {
        addSubview(self.scrollView)
        let guide = safeAreaLayoutGuide
        self.scrollView.topAnchor.constraint(equalToSystemSpacingBelow: guide.topAnchor, multiplier: 1.0).isActive = true
        self.scrollView.rightAnchor.constraint(equalToSystemSpacingAfter: guide.rightAnchor, multiplier: 1.0).isActive = true
        self.scrollView.bottomAnchor.constraint(equalToSystemSpacingBelow: guide.bottomAnchor, multiplier: 1.0).isActive = true
        self.scrollView.leftAnchor.constraint(equalToSystemSpacingAfter: guide.leftAnchor, multiplier: 1.0).isActive = true
    }
    
    func setupPromoteView() {
        // Promote Container
        self.scrollView.addSubview(self.promoteContainer)
        self.promoteContainer.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor).isActive = true
        self.promoteContainer.topAnchor.constraint(equalTo: self.scrollView.topAnchor, constant: self.defaultSpace).isActive = true
        self.promoteContainer.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor, constant: -self.defaultSpace).isActive = true
        self.promoteContainer.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor, constant: self.defaultSpace).isActive = true
        self.promoteContainer.heightAnchor.constraint(equalToConstant: self.symbolSize).isActive = true
        
        // Symbol ImgView
        self.promoteContainer.addSubview(self.imgViewPromoteSymbol)
        self.imgViewPromoteSymbol.centerYAnchor.constraint(equalTo: self.promoteContainer.centerYAnchor).isActive = true
        self.imgViewPromoteSymbol.widthAnchor.constraint(equalToConstant: self.symbolSize).isActive = true
        self.imgViewPromoteSymbol.heightAnchor.constraint(equalToConstant: self.symbolSize).isActive = true
        self.imgViewPromoteSymbol.leftAnchor.constraint(equalTo: self.promoteContainer.leftAnchor).isActive = true
        
        // Promote Title
        self.promoteContainer.addSubview(self.lblPromoteTitle)
        self.lblPromoteTitle.topAnchor.constraint(equalTo: self.promoteContainer.topAnchor).isActive = true
        self.lblPromoteTitle.leftAnchor.constraint(equalTo: self.imgViewPromoteSymbol.rightAnchor, constant: self.defaultSpace).isActive = true
        
        // Promote SubTitle
        self.promoteContainer.addSubview(self.lblPromoteSubTitle)
        self.lblPromoteSubTitle.topAnchor.constraint(equalTo: self.lblPromoteTitle.bottomAnchor, constant: self.verySmallSpace).isActive = true
        self.lblPromoteSubTitle.leftAnchor.constraint(equalTo: self.imgViewPromoteSymbol.rightAnchor, constant: self.defaultSpace).isActive = true
    }
    
    func setupSignInStackView() {
        self.scrollView.addSubview(self.signInStackView)
        self.signInStackView.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor).isActive = true
        
        self.signInStackView.topAnchor.constraint(equalTo: self.promoteContainer.bottomAnchor, constant: self.defaultSpace).isActive = true
        self.signInStackView.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor, constant: -self.defaultSpace).isActive = true
        self.signInStackView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: -self.defaultSpace).isActive = true
        self.signInStackView.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor, constant: self.defaultSpace).isActive = true
        
//        // TEST
//        for _ in 1...20 {
//            let b = UIButton()
//            b.translatesAutoresizingMaskIntoConstraints = false
//            b.setTitle("Button", for: .normal)
//            b.setTitleColor(.blue, for: .normal)
//            b.setTitleColor(.red, for: .highlighted)
//            self.signInStackView.addArrangedSubview(b)
//        }
        
        
    }
}
