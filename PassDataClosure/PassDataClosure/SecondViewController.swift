//
//  SecondViewController.swift
//  PassDataClosure
//
//  Created by Apple on 6/29/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    let topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello world"
        label.textColor = .red
        return label
    }()
    
    let luckyNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        return label
    }()
    
    let drawButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Draw a lucky number", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.addTarget(self, action: #selector(processDrawing), for: .touchUpInside)
        return button
    }()
    
    let backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Get your prize", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        button.isHidden = true
        return button
    }()
    
    var timer: Timer!
    var count: Int = 0
    
    var onCompletion: ((_ data: Int) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.title = "Lucky number"
        
        setupUI()
    }

    func setupUI() {
        view.addSubview(topLabel)
        view.addSubview(drawButton)
        view.addSubview(luckyNumberLabel)
        view.addSubview(backButton)
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            topLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            topLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            topLabel.heightAnchor.constraint(equalToConstant: 25),
            
            drawButton.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 50),
            drawButton.leadingAnchor.constraint(equalTo: topLabel.leadingAnchor),
            drawButton.trailingAnchor.constraint(equalTo: topLabel.trailingAnchor),
            drawButton.heightAnchor.constraint(equalToConstant: 25),
            
            backButton.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 50),
            backButton.leadingAnchor.constraint(equalTo: topLabel.leadingAnchor),
            backButton.trailingAnchor.constraint(equalTo: topLabel.trailingAnchor),
            backButton.heightAnchor.constraint(equalToConstant: 25),
            
            luckyNumberLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            luckyNumberLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50),
            luckyNumberLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func processDrawing() {
        timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(drawLuckyNumber), userInfo: nil, repeats: true)
    }
    
    @objc func drawLuckyNumber() {
        let luckyNumber = Int.random(in: 0...100)
        luckyNumberLabel.text = "\(luckyNumber)"
        count += 1
        
        if count == 25 {
            timer.invalidate()
            count = 0
            drawButton.isHidden = true
            backButton.isHidden = false
        }
    }
    
    @objc func backScreen() {
        self.navigationController?.popViewController(animated: true)
        guard let luckyNumber = Int(luckyNumberLabel.text ?? "") else {
            return
        }
        onCompletion?(luckyNumber)
    }
}
