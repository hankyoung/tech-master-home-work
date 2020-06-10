//
//  ViewController.swift
//  Balloon
//
//  Created by Apple on 6/9/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImageView: UIImageView!
    @IBOutlet weak var heightTextView: UITextField!
    @IBOutlet weak var dropButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropButton.layer.cornerRadius = dropButton.bounds.height / 2
        ballImageView.center.x = view.center.x
    }

    @IBAction func pressDropButton(_ sender: Any) {
        let height: Int = Int(heightTextView.text ?? "") ?? 100
        ballImageView.frame.origin.y = view.frame.size.height - ballImageView.frame.size.height - CGFloat(height)
        UIView.animate(withDuration: 1) {
            self.ballImageView.frame.origin.y = self.view.frame.size.height - self.ballImageView.frame.size.height
        }
        view.endEditing(true)
        print(view.safeAreaInsets.top)
    }
    
}

