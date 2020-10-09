//
//  View.swift
//  ScrollViewwithStackView
//
//  Created by Aaron Lee on 10/9/20.
//

import UIKit

class IndexView2: UIView, UITextFieldDelegate {
    // Size
    let screensize = UIScreen.main.bounds
    let defaultSpacing: CGFloat = 16.0
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
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
        //        self.scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.screensize.width, height: self.screensize.height))
        //        self.scrollView.contentSize = CGSize(width: self.screensize.width, height: self.screensize.height + 100.0)
        //        self.scrollView.backgroundColor = .systemBackground
        //
        //        self.addSubview(self.scrollView)
        scrollView.backgroundColor = .systemBackground
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
    func setupPromoteView() {
        // Container
//        self.promoteContainer = UIView()
//        self.promoteContainer.translatesAutoresizingMaskIntoConstraints = false
//        self.contentView.addSubview(self.promoteContainer)
//
//        self.promoteContainer.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
//        self.promoteContainer.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
//        self.promoteContainer.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 3/4).isActive = true
//        self.promoteContainer.heightAnchor.constraint(equalToConstant: 10000).isActive = true
//
//        self.promoteContainer.backgroundColor = .red
        
//        // Promote Image View
//        self.promoteImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 48.0, height: 48.0))
//        self.promoteImageView.image = UIImage(named: "symbol")
//        self.promoteImageView.translatesAutoresizingMaskIntoConstraints = false
//        self.promoteContainer.addSubview(self.promoteImageView)
//
//        // Promote Title
//        self.promoteTitle = UILabel()
//        self.promoteTitle.text = "Welcome to AaronLab!"
//        self.promoteTitle.font = .boldSystemFont(ofSize: 20)
//        self.promoteTitle.translatesAutoresizingMaskIntoConstraints = false
//        self.promoteContainer.addSubview(self.promoteTitle)
//
//        // Promote Subtitle
//        self.promoteSubTitle = UILabel()
//        self.promoteSubTitle.text = "www.aaronlab.net"
//        self.promoteSubTitle.font = .systemFont(ofSize: 12)
//        self.promoteSubTitle.textColor = .lightGray
//        self.promoteSubTitle.translatesAutoresizingMaskIntoConstraints = false
//        self.promoteContainer.addSubview(self.promoteSubTitle)
//
//        self.promoteContainer.widthAnchor.constraint(equalToConstant: self.screensize.width).isActive = true
//        self.promoteContainer.heightAnchor.constraint(equalToConstant: 48.0).isActive = true
//        self.promoteContainer.topAnchor.constraint(equalTo: self.scrollView.topAnchor, constant: self.defaultSpacing).isActive = true
//        self.promoteContainer.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor, constant: self.defaultSpacing).isActive = true
//        self.promoteContainer.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor, constant: self.defaultSpacing).isActive = true
//
//        self.promoteImageView.widthAnchor.constraint(equalToConstant: 48.0).isActive = true
//        self.promoteImageView.heightAnchor.constraint(equalToConstant: 48.0).isActive = true
//        self.promoteImageView.topAnchor.constraint(equalTo: self.promoteContainer.topAnchor).isActive = true
//        self.promoteImageView.leftAnchor.constraint(equalTo: self.promoteContainer.leftAnchor).isActive = true
//
//        self.promoteTitle.topAnchor.constraint(equalTo: self.promoteImageView.topAnchor).isActive = true
//        self.promoteTitle.leftAnchor.constraint(equalTo: self.promoteImageView.rightAnchor, constant: 10).isActive = true
//
//        self.promoteSubTitle.topAnchor.constraint(equalTo: self.promoteTitle.bottomAnchor, constant: 3.0).isActive = true
//        self.promoteSubTitle.leftAnchor.constraint(equalTo: self.promoteImageView.rightAnchor, constant: 10).isActive = true
        
        //        self.promoteContainer.addSubview(self.promoteImageView)
        //        self.promoteContainer.addSubview(self.promoteTitle)
        //        self.promoteContainer.addSubview(self.promoteSubTitle)
        
        //        // Promote Image View Constraints
        //        self.promoteImageView.translatesAutoresizingMaskIntoConstraints = false
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteImageView!, attribute: .leading, relatedBy: .equal, toItem: self.promoteContainer, attribute: .leading, multiplier: 1, constant: 0))
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteImageView!, attribute: .top, relatedBy: .equal, toItem: self.promoteContainer, attribute: .top, multiplier: 1, constant: 0))
        //
        //        // Promote Title Constraints
        //        self.promoteTitle.translatesAutoresizingMaskIntoConstraints = false
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteTitle!, attribute: .leading, relatedBy: .equal, toItem: self.promoteImageView!, attribute: .trailing, multiplier: 1, constant: 10))
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteTitle!, attribute: .top, relatedBy: .equal, toItem: self.promoteContainer, attribute: .top, multiplier: 1, constant: 0))
        //
        //        // Promote Subtitle Constraints
        //        self.promoteSubTitle.translatesAutoresizingMaskIntoConstraints = false
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteSubTitle!, attribute: .leading, relatedBy: .equal, toItem: self.promoteImageView!, attribute: .trailing, multiplier: 1, constant: 10))
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteSubTitle!, attribute: .top, relatedBy: .equal, toItem: self.promoteTitle!, attribute: .bottom, multiplier: 1, constant: 3))
        //
        //        // Container Constraints
        //        self.promoteContainer.translatesAutoresizingMaskIntoConstraints = false
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteContainer!, attribute: .trailing, relatedBy: .equal, toItem: self.scrollView, attribute: .trailing, multiplier: 1, constant: 16))
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteContainer!, attribute: .leading, relatedBy: .equal, toItem: self.scrollView, attribute: .leading, multiplier: 1, constant: 16))
        //        self.addConstraint(NSLayoutConstraint(item: self.promoteContainer!, attribute: .top, relatedBy: .equal, toItem: self.scrollView, attribute: .top, multiplier: 1, constant: 16))
    }
    
}
