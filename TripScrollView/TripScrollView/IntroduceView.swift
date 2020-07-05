//
//  IntroduceView.swift
//  TripScrollView
//
//  Created by Apple on 7/5/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class IntroduceView: UIView {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 28)
        label.textColor = .white
        return label
    }()
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textColor = .white
        textView.font = UIFont.systemFont(ofSize: 18)
        textView.backgroundColor = .none
        textView.textAlignment = .center
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout() {
        self.addSubview(containerView)
        containerView.addSubview(imageView)
        containerView.addSubview(label)
        containerView.addSubview(textView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            textView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -150),
            textView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 50),
            textView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -50),
            textView.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            label.bottomAnchor.constraint(equalTo: textView.topAnchor, constant: -10),
            label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            label.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
}
