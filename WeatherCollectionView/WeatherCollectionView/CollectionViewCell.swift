//
//  CollectionViewCell.swift
//  WeatherCollectionView
//
//  Created by Apple on 7/7/20.
//  Copyright © 2020 knb. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "17"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let iconImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "day_partial_cloud")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "36°"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        self.addSubview(topLabel)
        self.addSubview(iconImageView)
        self.addSubview(bottomLabel)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -4),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            topLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            iconImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 20),
            iconImageView.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            bottomLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
}
