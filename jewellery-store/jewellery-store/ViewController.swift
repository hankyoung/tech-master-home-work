//
//  ViewController.swift
//  jewellery-store
//
//  Created by Apple on 6/17/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let fbButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.blue
        button.setTitle("SIGN UP WITH FACEBOOK", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        return button
    }()
    
    let emailButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.darkGray
        button.setTitle("SIGN UP WITH EMAIL", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        return button
    }()
    
    let lineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = UIColor.white
        return lineView
    }()
    
    var jewelleryTextView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ideal store for your jewellery shopping"
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        view.addSubview(fbButton)
        view.addSubview(lineView)
        view.addSubview(emailButton)
        view.addSubview(jewelleryTextView)
        
        setupUI()
    }

    override func viewDidLayoutSubviews() {
        setupCornerButton()
    }
    
    func setupUI() {
        NSLayoutConstraint.activate([
            fbButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 40),
            fbButton.heightAnchor.constraint(equalToConstant: 50),
            fbButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -40),
            fbButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50),
            
            emailButton.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 40),
            emailButton.heightAnchor.constraint(equalToConstant: 50),
            emailButton.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -40),
            emailButton.bottomAnchor.constraint(equalTo: self.fbButton.topAnchor, constant: -10),
            
            lineView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 45),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            lineView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -45),
            lineView.bottomAnchor.constraint(equalTo: emailButton.topAnchor, constant: -40),
            
            jewelleryTextView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 45),
            jewelleryTextView.heightAnchor.constraint(equalToConstant: 80),
            jewelleryTextView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -45),
            jewelleryTextView.bottomAnchor.constraint(equalTo: lineView.topAnchor, constant: -20)
        ])
    }
    
    func setupCornerButton() {
        fbButton.layer.cornerRadius = fbButton.frame.height / 2
        emailButton.layer.cornerRadius = emailButton.frame.height / 2
    }
}
