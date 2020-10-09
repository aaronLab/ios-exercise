//
//  View.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import UIKit

class IndexView: UIView, UITextFieldDelegate {
    // Size
    let screensize = UIScreen.main.bounds
    let defaultSpacing: CGFloat = 16.0
    
    var scrollView: UIScrollView!
    
    // Promote
    var promoteContainer: UIView!
    var promoteImageView: UIImageView!
    var promoteTitle: UILabel!
    var promoteSubTitle: UILabel!
    
    convenience init() {
        self.init(frame: .zero)
        self.setupScrollView()
        self.setupPromoteView()
    }
    
    func setupScrollView() {
        self.scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.screensize.width, height: self.screensize.height))
        self.scrollView.contentSize = CGSize(width: self.screensize.width, height: self.screensize.height + 100.0)
        self.scrollView.backgroundColor = .white
        
        self.addSubview(self.scrollView)
    }
    
    func setupPromoteView() {
        // Promote Image View
        self.promoteImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 48.0, height: 48.0))
        self.promoteImageView.widthAnchor.constraint(equalToConstant: 48.0).isActive = true
        self.promoteImageView.heightAnchor.constraint(equalToConstant: 48.0).isActive = true
        self.promoteImageView.image = UIImage(named: "symbol")
        
        // Promote Title
        self.promoteTitle = UILabel()
        self.promoteTitle.text = "Welcome to AaronLab!"
        self.promoteTitle.font = .boldSystemFont(ofSize: 20)
        
        // Promote Subtitle
        self.promoteSubTitle = UILabel()
        self.promoteSubTitle.text = "www.aaronlab.net"
        self.promoteSubTitle.font = .systemFont(ofSize: 12)
        self.promoteSubTitle.textColor = .lightGray
        
        // Container
        self.promoteContainer = UIView(frame: CGRect(x: 0, y: 0, width: self.screensize.width, height: 48.0))
        self.scrollView.addSubview(self.promoteContainer)
        self.promoteContainer.addSubview(self.promoteImageView)
        self.promoteContainer.addSubview(self.promoteTitle)
        self.promoteContainer.addSubview(self.promoteSubTitle)
        
        // Promote Image View Constraints
        self.promoteImageView.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint(item: self.promoteImageView!, attribute: .leading, relatedBy: .equal, toItem: self.promoteContainer, attribute: .leading, multiplier: 1, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: self.promoteImageView!, attribute: .top, relatedBy: .equal, toItem: self.promoteContainer, attribute: .top, multiplier: 1, constant: 0))
        
        // Promote Title Constraints
        self.promoteTitle.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint(item: self.promoteTitle!, attribute: .leading, relatedBy: .equal, toItem: self.promoteImageView!, attribute: .trailing, multiplier: 1, constant: 10))
        self.addConstraint(NSLayoutConstraint(item: self.promoteTitle!, attribute: .top, relatedBy: .equal, toItem: self.promoteContainer, attribute: .top, multiplier: 1, constant: 0))
        
        // Promote Subtitle Constraints
        self.promoteSubTitle.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint(item: self.promoteSubTitle!, attribute: .leading, relatedBy: .equal, toItem: self.promoteImageView!, attribute: .trailing, multiplier: 1, constant: 10))
        self.addConstraint(NSLayoutConstraint(item: self.promoteSubTitle!, attribute: .top, relatedBy: .equal, toItem: self.promoteTitle!, attribute: .bottom, multiplier: 1, constant: 3))
        
        // Container Constraints
        self.promoteContainer.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint(item: self.promoteContainer!, attribute: .trailing, relatedBy: .equal, toItem: self.scrollView, attribute: .trailing, multiplier: 1, constant: 16))
        self.addConstraint(NSLayoutConstraint(item: self.promoteContainer!, attribute: .leading, relatedBy: .equal, toItem: self.scrollView, attribute: .leading, multiplier: 1, constant: 16))
        self.addConstraint(NSLayoutConstraint(item: self.promoteContainer!, attribute: .top, relatedBy: .equal, toItem: self.scrollView, attribute: .top, multiplier: 1, constant: 16))
    }
    
}
