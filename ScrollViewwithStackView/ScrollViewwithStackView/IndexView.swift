//
//  IndexView.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import UIKit

class IndexView: UIView {
    
    //MARK: - Elements Init
    
    let defaultSpace: CGFloat = 16.0
    let verySmallSpace: CGFloat = 2.0
    let symbolSize: CGFloat = 48.0
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemBackground
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcom to AaronLab!"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    let lblPromoteSubTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "www.aaronlab.net"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .lightGray
        return label
    }()
    
    let signInStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 16.0
        return stackView
    }()
    
    let textFieldPhoneNumber: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Phone Number"
        textField.stylingSignInTF()
        return textField
    }()
    
    let btnSignIn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue with Phone Number", for: .normal)
        btn.stylingSignInBtn(normal: .white, highlighted: .darkGray, bgColor: .orange)
        return btn
    }()
    
    let btnSocial1: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue with Google", for: .normal)
        btn.stylingSignInBtn(normal: .white, highlighted: .darkGray, bgColor: .red)
        return btn
    }()
    
    let btnSocial2: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue with Facebook", for: .normal)
        btn.stylingSignInBtn(normal: .white, highlighted: .darkGray, bgColor: .blue)
        return btn
    }()
    
    let btnSocial3: UIButton = {
        let btn = UIButton()
        btn.setTitle("Continue with Apple", for: .normal)
        btn.stylingSignInBtn(normal: .white, highlighted: .darkGray, bgColor: .black)
        return btn
    }()
    
    //MARK: - Init
    
    convenience init() {
        self.init(frame: .zero)
        self.backgroundColor = .systemBackground
        
        self.setupScrollView()
        self.setupPromoteView()
        self.setupSignInStackView()
    }
    
    func setupScrollView() {
        let guide = safeAreaLayoutGuide
        
        self.addSubview(self.scrollView)
        self.scrollView.addSubview(self.contentView)
        
        self.scrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.scrollView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        self.scrollView.topAnchor.constraint(equalToSystemSpacingBelow: guide.topAnchor, multiplier: 1.0).isActive = true
        self.scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        self.contentView.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor).isActive = true
        self.contentView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor).isActive = true
        self.contentView.topAnchor.constraint(equalTo: self.scrollView.topAnchor).isActive = true
        self.contentView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor).isActive = true
        self.contentView.heightAnchor.constraint(greaterThanOrEqualTo: self.scrollView.heightAnchor).isActive = true
    }
    
    //MARK: - Promote
    
    func setupPromoteView() {
        // Promote Container
        self.contentView.addSubview(self.promoteContainer)
        
        self.promoteContainer.addAnchors(
            top: self.contentView.topAnchor,
            topPadding: self.defaultSpace,
            right: self.contentView.rightAnchor,
            rightPadding: self.defaultSpace,
            bottom: nil,
            bottomPadding: 0,
            left: self.contentView.leftAnchor,
            leftPadding: self.defaultSpace,
            width: 0,
            height: self.symbolSize)
        
        self.setupPromoteSymbol()
        self.setupPromoteTitle()
        self.setupPromoteSubTitle()
    }
    
    func setupPromoteSymbol() {
        self.promoteContainer.addSubview(self.imgViewPromoteSymbol)
        
        self.imgViewPromoteSymbol.addAnchors(
            top: self.promoteContainer.topAnchor,
            topPadding: 0,
            right: nil,
            rightPadding: 0,
            bottom: nil,
            bottomPadding: 0,
            left: self.promoteContainer.leftAnchor,
            leftPadding: 0,
            width: self.symbolSize,
            height: self.symbolSize)
    }
    
    func setupPromoteTitle() {
        self.promoteContainer.addSubview(self.lblPromoteTitle)
        
        self.lblPromoteTitle.addAnchors(
            top: self.promoteContainer.topAnchor,
            topPadding: 0,
            right: nil,
            rightPadding: 0,
            bottom: nil,
            bottomPadding: 0,
            left: self.imgViewPromoteSymbol.rightAnchor,
            leftPadding: self.defaultSpace,
            width: 0,
            height: 0)
    }
    
    func setupPromoteSubTitle() {
        self.promoteContainer.addSubview(self.lblPromoteSubTitle)
        
        self.lblPromoteSubTitle.addAnchors(
            top: self.lblPromoteTitle.bottomAnchor,
            topPadding: self.verySmallSpace,
            right: nil,
            rightPadding: 0,
            bottom: nil,
            bottomPadding: 0,
            left: self.imgViewPromoteSymbol.rightAnchor,
            leftPadding: self.defaultSpace,
            width: 0,
            height: 0)
    }
    
    //MARK: - Sign In
    
    func setupSignInStackView() {
        self.contentView.addSubview(self.signInStackView)
        
        self.signInStackView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor).isActive = true
        self.signInStackView.topAnchor.constraint(greaterThanOrEqualTo: self.promoteContainer.bottomAnchor, constant: self.defaultSpace).isActive = true
        self.signInStackView.addAnchors(
            top: nil,
            topPadding: 0,
            right: self.contentView.rightAnchor,
            rightPadding: self.defaultSpace,
            bottom: self.contentView.bottomAnchor,
            bottomPadding: self.defaultSpace,
            left: self.contentView.leftAnchor,
            leftPadding: self.defaultSpace,
            width: 0,
            height: 0)
        
        self.signInStackView.addArrangedSubview(self.textFieldPhoneNumber)
        self.signInStackView.addArrangedSubview(self.btnSignIn)
        self.signInStackView.addArrangedSubview(self.btnSocial1)
        self.signInStackView.addArrangedSubview(self.btnSocial2)
        self.signInStackView.addArrangedSubview(self.btnSocial3)
    }
    
}
