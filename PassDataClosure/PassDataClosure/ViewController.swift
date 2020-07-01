//
//  ViewController.swift
//  PassDataClosure
//
//  Created by Apple on 6/29/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let numberTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.borderWidth = 1
        textField.autocorrectionType = .no
        textField.textColor = .black
        textField.placeholder = "Enter a number (0 - 100)"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Go to number drawing screen", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.addTarget(self, action: #selector(nextScreen), for: .touchUpInside)
        return button
    }()

    let topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        label.numberOfLines = 0
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Enter a random number"
        
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        numberTextField.layer.cornerRadius = 3
    }
    
    func setupUI() {
        view.addSubview(numberTextField)
        view.addSubview(nextButton)
        view.addSubview(topLabel)
        
        NSLayoutConstraint.activate([
            numberTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            numberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            numberTextField.heightAnchor.constraint(equalToConstant: 25),
            
            nextButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 50),
            nextButton.leadingAnchor.constraint(equalTo: numberTextField.leadingAnchor),
            nextButton.trailingAnchor.constraint(equalTo: numberTextField.trailingAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: 25),
            
            topLabel.topAnchor.constraint(equalTo: nextButton.bottomAnchor, constant: 30),
            topLabel.leadingAnchor.constraint(equalTo: numberTextField.leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: numberTextField.trailingAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
    @objc func nextScreen() {
        let secondViewController = SecondViewController()
        guard let inputNumber: Int = Int(numberTextField.text ?? "") else {
            topLabel.text = "Please enter a number"
            topLabel.textColor = .red
            return
        }
        secondViewController.topLabel.text = "You have chosen number \(inputNumber)!"
        
        secondViewController.onCompletion = { [weak self] data in
            guard let strongSelf = self else {
                return
            }
            if inputNumber == data {
                strongSelf.topLabel.text = "Gotcha!!!"
                strongSelf.topLabel.textColor = .green
            } else {
                strongSelf.topLabel.text = "Wish you lucky next time!!!"
                strongSelf.topLabel.textColor = .red
            }
        }
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
