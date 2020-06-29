//
//  LoginViewController.swift
//  jewellery-store
//
//  Created by Apple on 6/17/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    let topLayoutView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.black
        return view
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email"
        label.textColor = .white
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.textColor = .white
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let topTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "email"
        textField.backgroundColor = .black
        textField.textColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        return textField
    }()
    
    let bottomTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "password"
        textField.backgroundColor = .black
        textField.textColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.autocorrectionType = .no
        return textField
    }()
    
    let topLineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = UIColor.white
        return lineView
    }()
    
    let bottomLineView: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = UIColor.white
        return lineView
    }()
    
    let rememberLabel: UILabel = {
        let label = UILabel()
        label.text = "Remember me"
        label.textColor = .white
        label.backgroundColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let signinButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.darkGray
        button.setTitle("SIGN IN", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        return button
    }()
    
    let fbSigninButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.blue
        button.setTitle("SIGN IN WITH FACEBOOK", for: UIControl.State.normal)
        button.setTitleColor(UIColor.white, for: UIControl.State.normal)
        return button
    }()
    
    let loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Log into your account"
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        
        setupUI()
        

    }

    override func viewDidLayoutSubviews() {
        signinButton.layer.cornerRadius = signinButton.frame.height / 2
        fbSigninButton.layer.cornerRadius = fbSigninButton.frame.height / 2
    }
    
    func setupUI() {
        
        view.addSubview(topLayoutView)
        view.addSubview(emailLabel)
        view.addSubview(topTextField)
        view.addSubview(topLineView)
        view.addSubview(passwordLabel)
        view.addSubview(bottomTextField)
        view.addSubview(bottomLineView)
        view.addSubview(rememberLabel)
        view.addSubview(signinButton)
        view.addSubview(fbSigninButton)
        topLayoutView.addSubview(loginLabel)
        
        NSLayoutConstraint.activate([
            topLayoutView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topLayoutView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topLayoutView.heightAnchor.constraint(equalToConstant: 243),
            topLayoutView.topAnchor.constraint(equalTo: view.topAnchor),
            
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            emailLabel.heightAnchor.constraint(equalToConstant: 20),
            emailLabel.topAnchor.constraint(equalTo: topLayoutView.bottomAnchor, constant: 40),
            
            topTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            topTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            topTextField.heightAnchor.constraint(equalToConstant: 25),
            topTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            
            topLineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            topLineView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            topLineView.heightAnchor.constraint(equalToConstant: 1),
            topLineView.topAnchor.constraint(equalTo: topTextField.bottomAnchor, constant: 5),
            
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            passwordLabel.heightAnchor.constraint(equalToConstant: 20),
            passwordLabel.topAnchor.constraint(equalTo: topLineView.bottomAnchor, constant: 20),
            
            bottomTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            bottomTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            bottomTextField.heightAnchor.constraint(equalToConstant: 25),
            bottomTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            
            bottomLineView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            bottomLineView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            bottomLineView.heightAnchor.constraint(equalToConstant: 1),
            bottomLineView.topAnchor.constraint(equalTo: bottomTextField.bottomAnchor, constant: 5),
            
            rememberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            rememberLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            rememberLabel.heightAnchor.constraint(equalToConstant: 20),
            rememberLabel.topAnchor.constraint(equalTo: bottomLineView.bottomAnchor, constant: 30),
            
            signinButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            signinButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            signinButton.heightAnchor.constraint(equalToConstant: 50),
            signinButton.topAnchor.constraint(equalTo: rememberLabel.bottomAnchor, constant: 60),
            
            fbSigninButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            fbSigninButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            fbSigninButton.heightAnchor.constraint(equalToConstant: 50),
            fbSigninButton.topAnchor.constraint(equalTo: signinButton.bottomAnchor, constant: 10),
            
            loginLabel.leadingAnchor.constraint(equalTo: topTextField.leadingAnchor, constant: 0),
            loginLabel.trailingAnchor.constraint(equalTo: topTextField.trailingAnchor, constant: -100),
            loginLabel.heightAnchor.constraint(equalToConstant: 80),
            loginLabel.bottomAnchor.constraint(equalTo: topLayoutView.bottomAnchor, constant: -30)
        ])
    }

}
