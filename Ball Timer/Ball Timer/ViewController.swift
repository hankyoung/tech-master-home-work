//
//  ViewController.swift
//  Ball Timer
//
//  Created by Apple on 6/16/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let oneButton: UIButton = {
        let button = UIButton();
        button.frame = CGRect(x: 0, y: 0, width: 150, height: 50)
        button.backgroundColor = .green
        button.setTitle("Press me!", for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.layer.cornerRadius = CGFloat(button.bounds.height/2)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(oneButton)
        self.title = "The button"
        oneButton.center = view.center
        oneButton.addTarget(self, action: #selector(mainStage), for: .touchUpInside)
    }
    
    @objc func mainStage() {
        let bouncingBallVC = BouncingBallViewController()
        self.navigationController?.pushViewController(bouncingBallVC, animated: true)
    }
}

