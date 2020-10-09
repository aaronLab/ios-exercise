//
//  Extension.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import UIKit

extension UIView {
    func heightIs52() {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 52.0).isActive = true
    }
    
    func addAnchors(
        top: NSLayoutYAxisAnchor?,
        topPadding: CGFloat,
        right: NSLayoutXAxisAnchor?,
        rightPadding: CGFloat,
        bottom: NSLayoutYAxisAnchor?,
        bottomPadding: CGFloat,
        left: NSLayoutXAxisAnchor?,
        leftPadding: CGFloat,
        width: CGFloat,
        height: CGFloat)
    {
        translatesAutoresizingMaskIntoConstraints = false
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: topPadding).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -rightPadding).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -bottomPadding).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: leftPadding).isActive = true
        }
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
}

extension UIButton {
    func stylingSignInBtn(normal: UIColor, highlighted: UIColor, bgColor: UIColor) {
        heightIs52()
        setTitleColor(normal, for: .normal)
        setTitleColor(highlighted, for: .highlighted)
        backgroundColor = bgColor
        layer.cornerRadius = 8.0
    }
}

extension UITextField {
    func stylingSignInTF() {
        heightIs52()
        font = .systemFont(ofSize: 15)
        borderStyle = .roundedRect
        autocorrectionType = .no
        keyboardType = .numberPad
        clearButtonMode = .whileEditing
        contentVerticalAlignment = .center
    }
}
