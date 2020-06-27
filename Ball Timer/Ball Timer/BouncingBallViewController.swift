//
//  BouncingBallViewController.swift
//  Ball Timer
//
//  Created by Apple on 6/27/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class BouncingBallViewController: UIViewController {
    
    var accel: CGFloat = 1.0
    var velo: CGFloat = 0.0
    var y: CGFloat!
    let r: CGFloat = 50
    
    let ballImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "ball1"));
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return imageView
    }()
    
    var timer: Timer!
    var screenHeight: CGFloat!
    var ballHeight: CGFloat!
    let h: CGFloat = 600
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        screenHeight = view.bounds.height
        ballHeight = ballImageView.bounds.height
        
        y = screenHeight - h
        view.addSubview(ballImageView)
        ballImageView.center = CGPoint(x: view.center.x, y: y)
        
        timer = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(ballBouncing), userInfo: nil, repeats: true)
        
    }
    
    @objc func ballBouncing() {
        velo += accel
        y += velo
        
        if (y > screenHeight - r) {
            y = screenHeight - r
            velo = -velo * 0.9
            
            if (velo >= -0.45) {
                timer.invalidate()
            }
        }
        
        ballImageView.center.y = y
    }
}
