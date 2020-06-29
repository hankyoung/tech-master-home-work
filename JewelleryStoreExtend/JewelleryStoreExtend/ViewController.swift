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
    
    let jewelleryTextView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ideal store for your jewellery shopping"
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    var rightNavButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        view.addSubview(fbButton)
        view.addSubview(lineView)
        view.addSubview(emailButton)
        view.addSubview(jewelleryTextView)
        
        setupUI()
    }
    
    func setupUI() {
        NSLayoutConstraint.activate([
            fbButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
            fbButton.heightAnchor.constraint(equalToConstant: 50),
            fbButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40),
            fbButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50),
            
            emailButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
            emailButton.heightAnchor.constraint(equalToConstant: 50),
            emailButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40),
            emailButton.bottomAnchor.constraint(equalTo: self.fbButton.topAnchor, constant: -10),
            
            lineView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 45),
            lineView.heightAnchor.constraint(equalToConstant: 1),
            lineView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -45),
            lineView.bottomAnchor.constraint(equalTo: emailButton.topAnchor, constant: -40),
            
            jewelleryTextView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 45),
            jewelleryTextView.heightAnchor.constraint(equalToConstant: 80),
            jewelleryTextView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -45),
            jewelleryTextView.bottomAnchor.constraint(equalTo: lineView.topAnchor, constant: -20)
        ])
        
        rightNavButton = UIBarButtonItem(title: "SIGN IN", style: .plain, target: self, action: #selector(changeView))
        navigationItem.rightBarButtonItem = rightNavButton
        navigationController?.navigationBar.barTintColor = .black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
    }

    override func viewDidLayoutSubviews() {
        fbButton.layer.cornerRadius = fbButton.frame.height / 2
        emailButton.layer.cornerRadius = emailButton.frame.height / 2
    }

    @objc func changeView() {
        let loginViewController = LoginViewController()
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
}
